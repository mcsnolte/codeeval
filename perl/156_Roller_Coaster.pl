#!/usr/bin/env perl

=head1 DESCRIPTION

=cut

use strict;
use warnings;

while (<DATA>) {
	s/(\w)(\W*)(\w?)/uc($1) . $2 . lc($3)/eg;
	print;
}
exit(0);

__DATA__
To be, or not to be: that is the question.
Whether 'tis nobler in the mind to suffer.
The slings and arrows of outrageous fortune.
Or to take arms against a sea of troubles.
And by opposing end them, to die: to sleep.
