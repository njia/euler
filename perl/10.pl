#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

use warnings;
use strict;

my @primelist = (2, 3);

sub isprime {
  my $number = shift;
  my $root = int $number**0.5 + 1;
  return 1 if ($number == 2 || $number == 3);
    for (my $i=2; $i<=$root; $i++)  {
      return -1 if ($number % $i == 0)
    }
    return 1;
  }

  my $start = 3;

  while ($start < 2000000) {
    $start += 1;
    next if ($start %2 == 0 || $start %3 == 0);
    push @primelist, $start if (&isprime($start) == 1);
  }

  print eval join "+", @primelist;

