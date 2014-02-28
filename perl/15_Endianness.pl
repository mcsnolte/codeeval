#!/usr/bin/env perl

=head1 DESCRIPTION

Write a program to print out the endianness of the system.

=cut

use strict;
use warnings;

# https://metacpan.org/pod/distribution/perl/pod/perlfunc.pod
use Config;
print $Config{byteorder} == 12345678 ? 'LittleEndian' : 'BigEndian', "\n";

exit(0);

