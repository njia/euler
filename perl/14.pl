#!/usr/bin/env perl

use warnings;
use strict;

my $count   = 0;
my $result  = 0;
my $max_seq = 0;
my $t       = 0;
my %cache;

my $number = 0;

foreach $number (2 .. 1000000) {
  $t = $number;
  while ($t > 1) {
    $count += 1;
    if ($cache{$t}) {
      $count += $cache{$t};
      last;
    }
    if ($t %2 == 0){
      $t = $t/2;
    } else {
      $t = $t*3 + 1;
    }
  }

  $cache{$number} = $count;

  if ($count > $max_seq) {
    $max_seq = $count;
    $result  = $number;
  }
  $count = 0;
}

print $result, "\n";
