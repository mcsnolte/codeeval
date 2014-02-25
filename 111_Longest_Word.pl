#!/usr/bin/env perl

=head1 DESCRIPTION

In this challenge you need to find the longest word in a sentence. If the
sentence has more than one word of the same length you should pick the first
one.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my @words = sort { length($b) <=> length($a) } split /\s+/;
	print $words[0], "\n";
}
exit(0);

__DATA__
some line with text
another line
