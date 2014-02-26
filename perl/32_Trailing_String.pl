#!/usr/bin/env perl

=head1 DESCRIPTION

You are given two strings 'A' and 'B'. Print out a 1 if string 'B' occurs at
the end of string 'A'. Else a zero.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my ( $str, $word ) = split /,/, $line;
	my $ri = rindex( $str, $word );
	print $ri >= 0 && $ri == length($str) - length($word) ? 1 : 0;
	print "\n";
}
exit(0);

__DATA__
Hello World,World
Hello CodeEval,CodeEval
San Francisco,San Jose
