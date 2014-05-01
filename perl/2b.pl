#!/usr/bin/env perl
#
use warnings;
use strict;

my @numbers = (1,2);
my $nextnumber = 0;

while (($nextnumber = $numbers[-1] + $numbers[-2]) < 4000000) {
  push @numbers, $nextnumber;
}

my @evennumbers = grep { $_%2 == 0 } @numbers;
my $sum = eval join '+', @evennumbers;

print $sum, "\n";




