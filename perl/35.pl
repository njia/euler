#!/usr/bin/env perl
#

use strict;
use warnings;
use Math::Prime::Util qw(is_prime);

use constant ONE_MILLION => 1000000;

my $start = 1;
my @result;

while ($start < ONE_MILLION) {
  if ($start =~ /[02468]/ and $start > 2) {
    $start += 1;
    next;
  }
  push @result, $start if (&rotate_number($start) == 1);
  $start += 1;
}

print "Number of circular primes unler 1Million is: ", scalar @result, "\n";

sub rotate_number() {
  my @results;
  my $counter = 0;
  my $number = shift;
  my $total_prime = 0;

  while ($counter < length($number)) {
    my @_array = split //, $number;
    my $_first = shift @_array;
    push @_array, $_first;
    push @results, join('', @_array);
    $counter += 1;
    $number = $results[-1];
  }

  foreach my $i (@results) {
    $total_prime += 1 if is_prime($i);
  }

  if ($total_prime == scalar @results) {
    return 1;
  } else {
    return 0;
  }
}
