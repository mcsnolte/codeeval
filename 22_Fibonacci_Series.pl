#!/usr/bin/env perl

=head1 DESCRIPTION

The Fibonacci series is defined as: F(0) = 0; F(1) = 1; F(n) = F(n-1) + F(n-2)
when n>1. Given a positive integer 'n', print out the F(n).

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	print fib($_), "\n";
}

sub fib {
	my $n = shift;
	return 0 unless $n;
	return 1 if $n <= 2;
	my $a = 1;
	my $b = 2;
	$n -= 2;
	while ( --$n ) {
		my $t = $b;
		$b = $a + $b;
		$a = $t;
	}
	return $b;
}
exit(0);

__DATA__
5
12
