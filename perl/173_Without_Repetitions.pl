#!/usr/bin/env perl

=head1 DESCRIPTION

In a given text, if there are two or more identical characters in sequence,
delete the repetitions and leave only the first character.

=cut

use strict;
use warnings;

while (<DATA>) {
	s/(.)\1+/$1/g;
	print;
}
exit(0);

__DATA__
But as he spake he drew the good sword from its scabbard, and smote a heathen knight, Jusssstin of thee Iron Valley.
No matttter whom you choose, she deccccclared, I will abide by your decision.
Wwwhat is your will?
At his magic speech the ground oppened and he began the path of descent.
I should fly away and you would never see me again.
Wwwhat    is     your will?
