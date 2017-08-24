#!/usr/bin/env perl
#
use strict;
use warnings;
use constant ONE_MILLION => 1000000;

my $start = 0;
my $sum = 0;

while ($start < ONE_MILLION) {
  my $bin = sprintf("%b", $start);

  if ((scalar reverse $start) == $start and (scalar reverse $bin) == $bin) {
    $sum += $start;
  }
  $start += 1;
}

print "Sum is : $sum\n";
