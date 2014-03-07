#!/usr/bin/env perl

=head1 DESCRIPTION

You are given an array of integers. Count the numbers of ways in which the sum
of 4 elements in this array results in zero.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my (@nums) = split( /,/, $line );
	my $c = 0;
	foreach ( combine( 4, @nums ) ) {
		$c++ if sum($_) == 0;
	}
	print "$c\n";
}

sub sum {
	my $list_r = shift;
	my $sum    = 0;
	for my $n ( @{$list_r} ) {
		$sum += $n;
	}
	return $sum;
}

# idea lifted from http://rosettacode.org/wiki/Combinations#Perl
sub combine {
	my $n   = shift;
	my @set = @_;
	return unless @set;
	return map { [$_] } @set if $n == 1;

	my ($head) = shift @set;
	my @result = combine( $n - 1, @set );
	for my $subarray (@result) {

		#$subarray->unshift($head);
		if ( ref $subarray eq 'ARRAY' ) {
			unshift( @{$subarray}, $head );
		}
		else {
			$subarray = [$head];
		}
	}
	return ( @result, combine( $n, @set ) );
}

exit(0);

__DATA__
2,3,1,0,-4,-1
0,-1,3,-2
