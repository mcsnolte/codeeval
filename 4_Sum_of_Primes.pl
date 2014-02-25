#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the sum of the first 1000 prime numbers.

=cut

use strict;
use warnings;

my $i           = 2;
my $prime_count = 0;
my $sum         = 0;

while ( $prime_count < 1000 ) {
	if ( is_prime($i) ) {
		$sum += $i;
		$prime_count++;
	}
	$i++;
}
print $sum;

sub is_prime {
	my $num = shift;
	for my $i ( 2 .. $num / 2 ) {
		return 0 if $num % $i == 0;
	}
	return 1;
}

exit(0);

