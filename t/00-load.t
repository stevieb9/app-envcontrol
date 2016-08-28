#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'App::envcontrol' ) || print "Bail out!\n";
}

diag( "Testing App::envcontrol $App::envcontrol::VERSION, Perl $], $^X" );
