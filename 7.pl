#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

use warnings;
use strict;

sub isprime {
  my $number = $_[0];
  my $root = int $number**0.5 + 1;
  return 1 if ($number == 2 || $number == 3);
  return -1 if ($number %2 == 0 || $number %3 == 0 );
    for (my $i=2; $i<=$root; $i++)  {
      return -1 if ($number % $i == 0)
    }
    return 1;
  }

  my $count = 1;
  my $start = 1;

  while ($count <= 10001) {
    $start += 1;
    $count++ if (&isprime($start) == 1);
  }

  print $start, "\n";

