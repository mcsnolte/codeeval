#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program which swaps letters' case in a sentence. All non-letter
characters should remain the same.

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	$line =~ tr/[a-zA-Z]/[A-Za-z]/;
	print $line, "\n";
}
exit(0);

__DATA__
Hello world!
JavaScript language 1.8
A letter
