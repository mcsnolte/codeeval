#!/usr/bin/env perl

=head1 DESCRIPTION

The problem is as follows: choose a number, reverse its digits and add it to
the original. If the sum is not a palindrome (which means, it is not the same
number from left to right and right to left), repeat this procedure. E.g.

195 (initial number) + 591 (reverse of initial number) = 786

786 + 687 = 1473

1473 + 3741 = 5214

5214 + 4125 = 9339 (palindrome) In this particular case the palindrome 9339
appeared after the 4th addition. This method leads to palindromes in a few step
for almost all of the integers. But there are interesting exceptions. 196 is
the first number for which no palindrome has been found. It is not proven
though, that there is no such a palindrome.

=cut

use strict;
use warnings;

while ( my $num = <DATA> ) {
	chomp $num;

	my $c = 0;
	while ( !is_palindrome($num) ) {
		$num += reverse $num;
		$c++;
	}
	print "$c $num\n";
}

sub is_palindrome {
	my $n = shift;
	return 1 if $n < 10;

	my $m = int( length($n) / 2 );

	return substr( $n, 0, $m ) == substr( scalar reverse($n), 0, $m );
}

exit(0);

__DATA__
0
195
