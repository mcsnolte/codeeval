#!/usr/bin/env perl

=head1 DESCRIPTION

You are given the pairs of time values. The values are in the HH:MM:SS format
with leading zeros. Your task is to find out the time difference between the
pairs.

=cut

use strict;
use warnings;

while (<DATA>) {
	my ( $start, $end ) = map { hms_to_sec($_) } split( /\s/, $_ );

	my $diff = abs( $end - $start );
	print sec_to_hms($diff), "\n";
}

sub hms_to_sec {
	my $time = shift;
	my ( $h, $m, $s ) = split( /:/, $time );
	return $h * 60 * 60 + $m * 60 + $s;
}

sub sec_to_hms {
	my $s = shift;

	my $h = int( $s / 60 / 60 );
	$s -= $h * 60 * 60;
	my $m = int( $s / 60 );
	$s -= $m * 60;

	return sprintf( '%02d:%02d:%02d', $h, $m, $s );
}

exit(0);

__DATA__
14:01:57 12:47:11
13:09:42 22:16:15
08:08:06 08:38:28
23:35:07 02:49:59
14:31:45 14:46:56
