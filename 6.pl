#!/usr/bin/env perl

use warnings;
use strict;


my $sum1 = eval join "+", map { $_ ** 2 } (1..100);
my $sum2 = (eval join "+", (1..100)) ** 2;

print $sum2 - $sum1;
