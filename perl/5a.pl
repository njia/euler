#!/usr/bin/env perl
#
use warnings;
use strict;

my $candidate = 2520;

while () {
  $candidate+=20;
  my @result = map { $candidate % $_ } (11..20);
  my $sum = eval join "+", @result;
  if ($sum == 0) {
    print "found it ", $candidate,"\n";
    last;
  }
}
