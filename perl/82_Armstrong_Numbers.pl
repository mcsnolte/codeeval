#!/usr/bin/env perl

=head1 DESCRIPTION

An Armstrong number is an n-digit number that is equal to the sum of the n'th
powers of its digits. Determine if the input numbers are Armstrong numbers.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my $num = $_;
	my @d   = split //, $num;
	my $l   = scalar @d;
	my $sum = 0;
	$sum += $_**$l for @d;
	print $sum == $num ? 'True' : 'False';
	print "\n";
}
exit(0);

__DATA__
6
153
351
