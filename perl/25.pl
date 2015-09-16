#!/usr/bin/perl
#
use strict;
use warnings;
use v5.10;
use bigint;

my @fib_array = (1, 1);

while () {
  my $next = $fib_array[-1] + $fib_array[-2];
  if (length $next == 1000 ) {
    say scalar @fib_array + 1 and exit;
  }
  else {
    push @fib_array, $next;
  }
}

