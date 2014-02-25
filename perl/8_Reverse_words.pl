#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to reverse the words of an input sentence.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	print join( ' ', reverse split /\s+/ ), "\n";
}
exit(0);

__DATA__
Hello World
Hello CodeEval
