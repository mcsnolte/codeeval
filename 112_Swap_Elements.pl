#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a list of numbers which is supplemented with positions that have
to be swapped.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( $nums, $swaps ) = split /\s+:\s+/, $line;
	my @n = split /\s/, $nums;
	foreach my $swap ( split( /,\s+/, $swaps ) ) {
		my ( $a, $b ) = split /-/, $swap;
		my $t = $n[$a];
		$n[$a] = $n[$b];
		$n[$b] = $t;
	}
	print join( ' ', @n ), "\n";
}
exit(0);

__DATA__
1 2 3 4 5 6 7 8 9 : 0-8
1 2 3 4 5 6 7 8 9 10 : 0-1, 1-3
