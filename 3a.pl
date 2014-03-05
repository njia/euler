#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

use warnings;
use strict;

sub isprime {
  my $number = $_[0];
  my $root = int $number**0.5;
  return 1 if ($number == 2 || $number == 3);
  return -1 if ($number %2 == 0 || $number %3 == 0 );
    for (my $i=2; $i<=$root; $i++)  {
      return -1 if ($number % $i == 0)
    }
    return 1;
  }

  my $number = 600851475143;
  my $root = int $number**0.5;
  $root++ if $root %2 == 0;

  while ($root > 0) {
    $root-=2;
    if ($number % $root ==0 && &isprime($root) == 1) {
      print $root;
      last;
    }
  }

