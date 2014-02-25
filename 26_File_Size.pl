#!/usr/bin/env perl

=head1 DESCRIPTION

Print the size of a file in bytes.

=cut

use strict;
use warnings;

print -s $ARGV[0];

exit(0);

