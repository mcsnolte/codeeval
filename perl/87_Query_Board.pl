#!/usr/bin/env perl

=head1 DESCRIPTION

There is a board (matrix). Every cell of the board contains one integer, which
is 0 initially.

The next operations can be applied to the Query Board:  SetRow i x: it means
that all values in the cells on row "i" have been changed to value "x" after
this operation.  SetCol j x: it means that all values in the cells on column
"j" have been changed to value "x" after this operation.  QueryRow i: it means
that you should output the sum of values on row "i".  QueryCol j: it means that
you should output the sum of values on column "j".

The board's dimensions are 256x256  "i" and "j" are integers from 0 to 255  "x"
is an integer from 0 to 31

=cut

use strict;
use warnings;

my $size  = 255;
my @board = map {
	[ map { 0 } ( 0 .. $size ) ]
} ( 0 .. $size );

while ( my $line = <DATA> ) {
	chomp $line;
	if ( $line =~ m/(\w+)\s(\d+)(?:\s(\d+))?/ ) {
		my $op = $1;
		my $i  = $2;
		my $x  = $3;
		if ( $op eq 'SetCol' ) {
			foreach my $r ( 0 .. $size ) {
				$board[$r][$i] = $x;
			}
		}
		elsif ( $op eq 'SetRow' ) {
			foreach my $c ( 0 .. $size ) {
				$board[$i][$c] = $x;
			}
		}
		elsif ( $op eq 'QueryCol' ) {
			my $sum = 0;
			foreach my $r ( 0 .. $size ) {
				$sum += $board[$r][$i];
			}
			print "$sum\n";
		}
		elsif ( $op eq 'QueryRow' ) {
			my $sum = 0;
			foreach my $c ( 0 .. $size ) {
				$sum += $board[$i][$c];
			}
			print "$sum\n";
		}
	}
}

exit(0);

__DATA__
SetCol 32 20
SetRow 15 7
SetRow 16 31
QueryCol 32
SetCol 2 14
QueryRow 10
SetCol 14 0
QueryRow 15
SetRow 10 1
QueryCol 2
