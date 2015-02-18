#!/usr/bin/env perl

=head1 DESCRIPTION

You're responsible for providing a demographic report for your local school
district based on age. To do this, you're going determine which 'category' each
person fits into based on their age.

=cut

use strict;
use warnings;
use feature 'say';

while ( my $age = <DATA> ) {
	chomp $age;

	if ( $age < 0 || $age > 100 ) {
		say "This program is for humans";
	}
	elsif ( $age < 2 ) {
		say "Still in Mama's arms";
	}
	elsif ( $age < 4 ) {
		say 'Preschool Maniac';
	}
	elsif ( $age < 11 ) {
		say 'Elementary school';
	}
	elsif ( $age < 14 ) {
		say 'Middle school';
	}
	elsif ( $age < 18 ) {
		say 'High school';
	}
	elsif ( $age < 22 ) {
		say 'College';
	}
	elsif ( $age < 65 ) {
		say 'Working for the man';
	}
	else {
		say 'The Golden Years';
	}
}
exit(0);

__DATA__
0
19
