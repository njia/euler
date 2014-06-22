#!/usr/bin/env perl

use warnings;
use strict;
use bigint;

print eval join "+", split(//, 2**1000);
