#!/usr/bin/env perl

=head1 DESCRIPTION

Given a decimal (base 10) number, print out its binary representation.

=cut

use strict;
use warnings;

while ( my $num = <DATA> ) {
	chomp $num;
	my $str = '';
	do {
		$str = ( $num & 1 ) . $str;
		$num >>= 1;
	} while ($num);
	print $str, "\n";
}
exit(0);

__DATA__
0
2
10
67
