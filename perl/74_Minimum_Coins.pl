#!/usr/bin/env perl

=head1 DESCRIPTION

You are given 3 coins of value 1, 3 and 5. You are also given a total which you
have to arrive at. Find the minimum number of coins to arrive at it.

=cut

use strict;
use warnings;

my @coins = ( 5, 3, 1 );
while ( my $amount = <DATA> ) {
	chomp $amount;
	my $total = 0;
	my $coin  = 0;
	while ($amount) {
		if ( my $x = int( $amount / $coins[$coin] ) ) {
			$total += $x;
			$amount = $amount % $coins[$coin];
		}
		$coin++;
	}
	print $total, "\n";
}
exit(0);

__DATA__
11
20
