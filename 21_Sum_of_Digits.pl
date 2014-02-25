#!/usr/bin/env perl

=head1 DESCRIPTION

Given a positive integer, find the sum of its constituent digits.

=cut

use strict;
use warnings;

while ( my $num = <DATA> ) {
	chomp $num;
	my $sum = 0;
	foreach my $n ( split( //, $num ) ) {
		$sum += int($n);
	}
	print $sum, "\n";
}
exit(0);

__DATA__
23
496
