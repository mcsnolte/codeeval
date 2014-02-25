#!/usr/bin/env perl

=head1 DESCRIPTION

You will be given a hexadecimal (base 16) number. Convert it into decimal (base
10).

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my $hex = $_;
	my @c   = split( //, $hex );
	my @d   = reverse map { m/[a-f]/ ? ord($_) - 87 : $_ } @c;
	my $dec = 0;
	for my $i ( 0 .. scalar @d - 1 ) {
		$dec += ( 16**$i ) * $d[$i];
	}
	print "$dec\n";
}
exit(0);

__DATA__
9f
11
