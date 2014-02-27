#!/usr/bin/env perl

=head1 DESCRIPTION

Given two integers N and M, count the number of prime numbers between N and M
(both inclusive)

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $start, $end ) = split /,/;

	my $primes = 0;
	for my $n ( $start .. $end ) {
		$primes++ if is_prime($n);
	}
	print $primes, "\n";
}

sub is_prime {
	my $num = shift;
	for my $i ( 2 .. int sqrt($num) ) {
		return 0 if $num % $i == 0;
	}
	return 1;
}

exit(0);

__DATA__
2,10
20,30
