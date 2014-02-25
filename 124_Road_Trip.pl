#!/usr/bin/env perl

=head1 DESCRIPTION

You've decided to make a road trip across the country in a straight line. You
have chosen the direction you'd like to travel and made a list of cities in
that direction that have gas stations to stop at and fill up your tank. To make
sure that this route is viable, you need to know the distances between the
adjacent cities in order to be able to travel this distance on a single tank of
gasoline, (No one likes running out of gas.) but you only know distances to
each city from your starting point.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my @d = sort { $a <=> $b } grep { m/\d/ } split( /[^\d]+/, $line );
	my $dn = 0;
	my @s;
	foreach (@d) {
		my $diff = $_ - $dn;
		$dn += $diff;
		push( @s, $diff );
	}
	print join( ',', @s ), "\n";
}
exit(0);

__DATA__
Rkbs,5453; Wdqiz,1245; Rwds,3890; Ujma,5589; Tbzmo,1303;
Vgdfz,70; Mgknxpi,3958; Nsptghk,2626; Wuzp,2559; Jcdwi,3761;
Yvnzjwk,5363; Pkabj,5999; Xznvb,3584; Jfksvx,1240; Inwm,5720;
Ramytdb,2683; Voclqmb,5236;
