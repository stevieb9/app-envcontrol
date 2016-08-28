use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'App::envcontrol',
    AUTHOR           => q{Steve Bertrand <steveb@cpan.org>},
    VERSION_FROM     => 'bin/envcontrol',
    ABSTRACT_FROM    => 'bin/envcontrol',
    LICENSE          => 'artistic_2',
    EXE_FILES        => [qw(bin/envcontrol)],
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.006,
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            bugtracker => {
                web => 'https://github.com/stevieb9/app-envcontrol/issues',
            },
            repository => {
                type => 'git',
                url => 'https://github.com/stevieb9/app-envcontrol.git',
                web => 'https://github.com/stevieb9/app-envcontrol',
            },
        },
    },

    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'RPi::DHT11::EnvControl' => 0.07,
        'RPi::WiringPi' => 1.01,
        Wx => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'App-envcontrol-*' },
);
