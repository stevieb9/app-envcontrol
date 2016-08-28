#!/usr/bin/perl
use strict;
use warnings;


use RPi::WiringPi;
use RPi::WiringPi::Constant qw(:all);

my $pi = RPi::WiringPi->new(setup => 'wpi');
my $pin = $pi->pin(29);

$pin->mode(OUTPUT);
$pin->write(HIGH);

sleep 1;

$pi->cleanup;
