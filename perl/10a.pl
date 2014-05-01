#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

# Problem 10
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
# Find the sum of all the primes below two million.

use warnings;
use strict;
use Math::Prime::Util qw(is_prime);

my @primelist = (0);

  my $start = 1;

  while ($start < 2000000) {
    $start += 1;
    push @primelist, $start if is_prime($start) ;
  }

  print eval join "+", @primelist;

