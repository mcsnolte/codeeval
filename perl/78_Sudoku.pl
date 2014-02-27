#!/usr/bin/env perl

=head1 DESCRIPTION

Sudoku is a number-based logic puzzle. It typically comprises of a 9*9 grid
with digits so that each column, each row and each of the nine 3*3 sub-grids
that compose the grid contains all the digits from 1 to 9. For this challenge,
you will be given an N*N grid populated with numbers from 1 through N and you
have to determine if it is a valid sudoku solution. You may assume that N will
be either 4 or 9. The grid can be divided into square regions of equal size,
where the size of a region is equal to the square root of a side of the entire
grid. Thus for a 9*9 grid there would be 9 regions of size 3*3 each.

  0  1|  2  3
  4  5|  6  7
  -----------
  8  9| 10 11
 12 13| 14 15

  0  1  2|  3  4  5|  6  7  8
  9 10 11| 12 13 14| 15 16 17
 18 19 20| 21 22 23| 24 25 26
 ----------------------------
 27 28 29| 30 31 32| 33 34 35
 36 37 38| 39 40 41| 42 43 44
 45 46 47| 48 49 50| 51 52 53
 ----------------------------
 54 55 56| 57 58 59| 60 61 62
 63 64 65| 66 67 68| 69 70 71
 72 73 74| 75 76 77| 78 79 80

=cut

use strict;
use warnings;

my $size;
my @num;
my $key;

while (<DATA>) {
	chomp;
	( $size, @num ) = split /\D/;
	$key = join( '', 1 .. $size );

	if ( check_rows() && check_cols() && check_grids() ) {
		print "True\n";
	}
	else {
		print "False\n";
	}
}

sub check_rows {
	for my $r ( 0 .. $size - 1 ) {
		my $start = $r * $size;
		my $end   = $start + $size - 1;
		return 0 unless $key eq join( '', sort { $a <=> $b } @num[ $start .. $end ] );
	}
	return 1;
}

sub check_cols {
	for my $c ( 0 .. $size - 1 ) {
		my @p = map { $c + $_ * $size } ( 0 .. $size - 1 );
		return 0 unless $key eq join( '', sort { $a <=> $b } @num[@p] );
	}
	return 1;
}

sub check_grids {
	my $sq = sqrt($size);

	# Each row of grids
	for my $gr ( 0 .. $sq - 1 ) {
		my $r0 = $gr * $sq * $size;

		# Each grid in that row
		for my $g ( 0 .. $sq - 1 ) {
			my $gr0 = $r0 + $g * $sq;    # top left of each grid

			# Each row in that grid
			my @p;
			for my $r ( 0 .. $sq - 1 ) {
				my $g0 = $gr0 + $r * $size;    # start of each grid row
				push @p, ( $g0 .. $g0 + $sq - 1 );
			}
			return 0 unless $key eq join( '', sort { $a <=> $b } @num[@p] );
		}
	}
	return 1;
}

exit(0);

__DATA__
4;1,4,2,3,2,3,1,4,4,2,3,1,3,1,4,2
4;2,1,3,2,3,2,1,4,1,4,2,3,2,3,4,1
