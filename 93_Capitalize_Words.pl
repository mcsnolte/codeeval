#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program which capitalizes the first letter of each word in a sentence.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	print join( ' ', map { ucfirst } split /\s/ );
	print "\n";

}
exit(0);

__DATA__
Hello world
javaScript language
a letter
1st thing
