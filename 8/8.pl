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

for (my $i=0; $i<=999;$i++) {
  my $temp = substr($string, $i, 5);
  # print "Temp number is ", $temp, "\n";
    my @five = ();
    push @five, chop $temp;
    push @five, chop $temp;
    push @five, chop $temp;
    push @five, chop $temp;
    push @five, chop $temp;
    # print "five is ", @five, "\n";
    # print "product is ", ($five[0]*$five[1]*$five[2]*$five[3]*$five[4]), "\n";
    push @products, $five[0]*$five[1]*$five[2]*$five[3]*$five[4];
}

print max @products;



