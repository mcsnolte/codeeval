#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program which finds the next-to-last word in a string.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @words = split /\s+/;
	print $words[-2], "\n";
}
exit(0);

__DATA__
some line with text
another line
