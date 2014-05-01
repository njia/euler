#!/usr/bin/env perl
#n! means n × (n − 1) × ... × 3 × 2 × 1
#
#For example, 10! = 10 × 9 × ... × 3 × 2 × 1 = 3628800,
#and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
#
#Find the sum of the digits in the number 100!

use warnings;
use strict;
use bigint;

sub jiecheng {
  my $number = $_[0];
  return 1 if $number < 2;
  $number * jiecheng($number -1);
}

my $big = &jiecheng(100);
$big =~ s/0//g;
my @list =();
my $i=0;

while ($_ = substr $big, $i, 1) {
  push @list, $_;
  $i++;
}

print eval join "+", @list;
