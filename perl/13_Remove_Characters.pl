#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to remove specific characters from a string.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $str, $letters ) = split /\s*,\s*/;
	$str =~ s/[$letters]//g;
	print $str, "\n";
}
exit(0);

__DATA__
how are you, abc
hello world, def
