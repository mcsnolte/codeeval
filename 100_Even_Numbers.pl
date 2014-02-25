#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program which checks input numbers and determines whether a number is
even or not.

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	print $_ % 2 == 0 ? 1 : 0;
	print "\n";
}
exit(0);

__DATA__
701
4123
2936
