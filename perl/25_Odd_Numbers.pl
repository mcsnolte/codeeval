#!/usr/bin/env perl

=head1 DESCRIPTION

Print the odd numbers from 1 to 99.

=cut

use strict;
use warnings;

foreach my $num ( 1 .. 99 ) {
	print $num . "\n" if $num % 2 != 0;
}

exit(0);

