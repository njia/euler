#!/usr/bin/env perl

# Find the greatest product of five consecutive digits in the 1000-digit number.
# in 1000digitnumber.txt

use warnings;
use strict;
use List::Util qw(max);

open IN_FILE, "<", "1000digitnumber.txt" or die "Could not open file\n";
my $string = <IN_FILE>;
chomp $string;

my @products=();
my $temp;

for (my $i=0; $i<=999; $i++) {
  $temp = substr($string, $i, 5);
  next if $temp =~ /0/;
  push @products, (eval join "*", (split //, $temp));
}

print "The product is: ", (max @products), "\n";
