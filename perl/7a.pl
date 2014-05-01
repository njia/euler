#!/usr/bin/env perl
#or /usr/bin/perl if you don't have perlbrew

# Problem 7
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
# What is the 10 001st prime number?

use warnings;
use strict;
use Math::Prime::Util qw(is_prime);



  my $count = 1;
  my $start = 1;

  while ($count <= 10001) {
    $start += 1;
    $count++ if is_prime($start);
  }

  print $start, "\n";

