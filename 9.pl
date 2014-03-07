#!/usr/bin/env perl
#
#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#
#a2 + b2 = c2
#For example, 3**2 + 4**2 = 9 + 16 = 25 = 52.
#
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

use warnings;
use strict;

sub sum3 {
  return 1 if ($_[0]+$_[1]+$_[2]) == 1000;
}

sub pytha {
  return 1 if ($_[0]**2 + $_[1]**2) == $_[2]**2;
}

for (my $i=1; $i<1000; $i++) {
  for (my $j=1; $j<(1000-$i); $j++) {
    for (my $k=1; $k<1000; $k++) {
      if ((&sum3($i, $j, $k) == 1) && (&pytha($i,$j,$k)) == 1) {
        print $i*$j*$k;
        exit 0;
      }
    }
  }
}

