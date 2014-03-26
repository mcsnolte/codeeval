#!/usr/bin/env perl

=head1 DESCRIPTION

You are given an encoded message containing only numbers. You are also provided
with the following mapping:

	A : 1
	B : 2
	C : 3
	...
	Z : 26

Given an encoded message, count the number of ways it can be decoded.

=cut

use strict;
use warnings;

my $max = 26;
while ( my $line = <DATA> ) {
	chomp $line;

	my $count = 0;
	check( $line, \$count );
	print "$count\n";
}

sub check {
	my $str = shift;
	my $c_r = shift;
	if ( length($str) <= 1 ) {

		# when length zero this path worked
		# or just one num left that's not zero
		$$c_r++ if length($str) == 0 || $str != 0;
		return;
	}
	my $next2 = substr( $str, 0, 2 );
	if ( $next2 <= $max ) {

		# two at a time
		check( substr( $str, 2 ), $c_r );
	}

	# one at a time
	# but skip zero since A: 1
	check( substr( $str, 1 ), $c_r ) if substr( $str, 1, 1 ) != 0;
	return;
}

exit(0);

__DATA__
12
123
99
100
10
1226
