#!/usr/bin/env perl

=head1 DESCRIPTION

You are given two strings. Determine if the second string is a rotation of the
first string.

=cut

use strict;
use warnings;

LINE: while ( my $line = <DATA> ) {
	chomp $line;
	my ( $word, $rotated ) = split /,/, $line;
	my @r = split //, $rotated;
	for ( 1 .. scalar @r ) {
		my $move = shift @r;
		push @r, $move;
		if ( $word eq join( '', @r ) ) {
			print "True\n";
			next LINE;
		}
	}
	print "False\n";
}
exit(0);

__DATA__
Hello,lloHe
Basefont,tBasefon
Hello,lolHe
