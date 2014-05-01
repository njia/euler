#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

use warnings;
use strict;

my @primelist = (0);

sub isprime {
  my $number = $_[0];
  my $root = int $number**0.5 + 1;
  return 1 if ($number == 2 || $number == 3);
    for (my $i=2; $i<=$root; $i++)  {
      return -1 if ($number % $i == 0)
    }
    return 1;
  }

  my $start = 1;

  while ($start < 2000000) {
    $start += 1;
    push @primelist, $start if (&isprime($start) == 1);
  }

  print eval join "+", @primelist;

