#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to determine the biggest prime palindrome under 1000.

=cut

use strict;
use warnings;

my $max = 0;
for my $i ( 10 .. 1000 ) {
	if ( is_palindrome($i) && is_prime($i) ) {
		$max = $i;
	}
}
print $max;
exit(0);

sub is_prime {
	my $num = shift;
	for my $i ( 2 .. int sqrt($num) ) {
		return 0 if $num % $i == 0;
	}
	return 1;
}

sub is_palindrome {
	my @nums = split( //, shift );
	return $nums[0] == $nums[-1];
}

