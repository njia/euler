#!/usr/bin/env perl

use warnings;
use strict;

open my $IN_FILE, "<", "number.txt" or die "Could not read the numbers\n";
my @reduced_number = ();

while (<$IN_FILE>) {
  push @reduced_number, $1 if /([\d]{11})/;
}

my $result = eval (join "+", @reduced_number);
print "$1\n" if $result =~ /([\d]{10})/;
