#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program which sorts numbers.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @nums = split /\s+/;
	print join( ' ', sort { $a <=> $b } @nums );
	print "\n";
}
exit(0);

__DATA__
70.920 -38.797 14.354 99.323 90.374 7.581
-37.507 -3.263 40.079 27.999 65.213 -55.552
