#!/usr/bin/env perl

=head1 DESCRIPTION

There are two details on a M*N checkered field. The detail X covers several (at
least one) first cells in each line. The detail Y covers several (at least one)
last cells. Each cell is either fully covered with a detail or not.

The detail Y starts moving left (without any turn) until it bumps into the X
detail at least with one cell. Determine by how many cells the detail Y will be
moved.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	if ( $line =~ m/XY/ ) {
		print "0\n";
	}

	$line =~ s/[^.,]//g;
	my ($min) = sort { $a <=> $b } map { length $_ } split( /,/, $line );

	print "$min\n";
}
exit(0);

__DATA__
XX.YY,XXX.Y,X..YY,XX..Y
XX...YY,X....YY,XX..YYY,X..YYYY
XXYY,X..Y,XX.Y
XXYY,XYYY
