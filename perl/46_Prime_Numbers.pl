#!/usr/bin/env perl

=head1 DESCRIPTION

Print out the prime numbers less than a given number N. For bonus points your
solution should run in N*(log(N)) time or better. You may assume that N is
always a positive integer.

=cut

use strict;
use warnings;

my @nums;
my $max = 0;
while (<DATA>) {
	chomp;
	$max = $_ if $_ > $max;
	push @nums, $_;
}

my @primes = grep { is_prime($_) } ( 2 .. $max );

foreach my $num (@nums) {
	print join( ',', grep { $_ < $num } @primes ), "\n";
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
10
20
100
