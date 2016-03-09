#!/usr/bin/env perl
#
use warnings;
use strict;

sub is_palindrome {
  return 1 if ($_[0] == scalar reverse $_[0]);
  return 0;
}

my $result=0;
my ($p, $a, $b);

foreach $a (100 .. 999) {
  foreach $b (100 .. 999) {
    $p = $a*$b;
    if (&is_palindrome($p) == 1) {
      $result = $p if ($p > $result);
    }
  }
}

print $result, "\n";
