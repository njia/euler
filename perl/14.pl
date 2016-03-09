#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

use warnings;
use strict;

my $count = 0;
my $result = 0;
my $max_seq = 0;
my $t = 0;

sub collatz {
  $t = $_[0];
  while($t > 1) {
    $count += 1;
    if ($t % 2 == 0) {
      $t = $t/2;
    } else {
      $t = $t*3 + 1;
    }
  }
}

my $number = 0;

foreach $number (2 .. 1000000) {
  &collatz($number);
  if ($count > $max_seq) {
    $max_seq = $count;
    $result  = $number;
  }
  $count = 0;
}

print $result, "\n";
