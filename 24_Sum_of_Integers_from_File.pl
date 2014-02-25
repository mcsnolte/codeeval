#!/usr/bin/env perl

=head1 DESCRIPTION

Print out the sum of integers read from a file.

=cut

use strict;
use warnings;

my $sum = 0;
while (<DATA>) {
	chomp;
	$sum += int $_;
}

print $sum;

exit(0);

__DATA__
5
12
