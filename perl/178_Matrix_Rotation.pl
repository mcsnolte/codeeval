#!/usr/bin/env perl

=head1 DESCRIPTION

You are given a 2D N×N matrix. Each element of the matrix is a letter: from
‘a’ to ‘z’. Your task is to rotate the matrix 90° clockwise.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my (@chars) = split /\s+/, $line;
	my $w       = sqrt( scalar @chars );
	my $e       = $w - 1;
	my @new;

	# walk through the grid left to right, bottom to top
	for ( my $x = 0 ; $x <= $e ; $x++ ) {
		for ( my $y = $e ; $y >= 0 ; $y-- ) {
			my $o = $x + $y * $w;
			push @new, $chars[$o];
		}
	}

	$" = ' ';
	print "@new\n";
}
exit(0);

__DATA__
a b c d
a b c d e f g h i j k l m n o p
a b c d e f g h i
