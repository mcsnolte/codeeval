#!/usr/bin/env perl

=head1 DESCRIPTION

In this challenge you will be given a file where each line is a section of a
race track with obstructions, gates and checkpoints. The goal is to find a way
of passing this track, using the following rules:  Each section contains only a
single gate or a gate with a checkpoint.  The race car can ride only through
gates or checkpoints.  You should prefer driving through checkpoint rather then
a gate.  The obstructions are represented by "#" (hash).  The gates are
represented by "_" (underscore).  The checkpoints are represented by "C" .

=cut

use strict;
use warnings;

my $last_pos;
while ( my $line = <DATA> ) {
	my $c = index( $line, 'C' );
	my $u = index( $line, '_' );

	my ( $p, $char );
	if ( $c >= 0 ) {
		$p    = $c;
		$char = 'C';
	}
	else {
		$p    = $u;
		$char = '_';
	}

	if ( !defined $last_pos || $last_pos == $p ) {
		$line =~ s/$char/|/;
	}
	elsif ( $p < $last_pos ) {
		$line =~ s/$char/\//;
	}
	else {
		$line =~ s/$char/\\/;
	}
	$last_pos = $p;

	print $line;
}

exit(0);

__DATA__
##########_##
#########C_##
########_####
#######_#C###
########_C###
########_####
#######C#_###
#######C_####
########_####
########_####
