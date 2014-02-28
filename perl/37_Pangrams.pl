#!/usr/bin/env perl

=head1 DESCRIPTION

The sentence 'A quick brown fox jumps over the lazy dog' contains every single
letter in the alphabet. Such sentences are called pangrams. You are to write a
program, which takes a sentence, and returns all the letters it is missing
(which prevent it from being a pangram). You should ignore the case of the
letters in sentence, and your return should be all lower case letters, in
alphabetical order. You should also ignore all non US-ASCII characters.In case
the input sentence is already a pangram, print out the string NULL

=cut

use strict;
use warnings;

while ( my $line = <DATA> ) {
	chomp $line;
	my %letters = map { $_ => 0 } ( 'a' .. 'z' );
	$letters{$_} = 1 for split( //, lc $line );
	my @missing = grep { !$letters{$_} } keys %letters;
	print scalar @missing ? join( '', sort @missing ) : 'NULL';
	print "\n";
}
exit(0);

__DATA__
A quick brown fox jumps over the lazy dog
A slow yellow fox crawls under the proactive dog
