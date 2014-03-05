#!/usr/bin/perl

use warnings;
use strict;

my @numbers = grep { $_%3 == 0 || $_%5 == 0 }  (1..999);
my $total = eval join '+', @numbers;

print $total, "\n";
