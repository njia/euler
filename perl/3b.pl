#!/usr/bin/env perl
#
use warnings;
use strict;
use Math::Prime::Util qw(factor);
use List::Util qw(max);

print max factor(600851475143);
