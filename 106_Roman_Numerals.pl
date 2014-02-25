#!/usr/bin/env perl

=head1 DESCRIPTION

Many persons are familiar with the Roman numerals for relatively small numbers.
The symbols I (capital i), V, X, L, C, D, and M represent the decimal values 1,
5, 10, 50, 100, 500 and 1000 respectively. To represent other values, these
symbols, and multiples where necessary, are concatenated, with the
smaller-valued symbols written further to the right. For example, the number 3
is represented as III, and the value 73 is represented as LXXIII. The
exceptions to this rule occur for numbers having units values of 4 or 9, and
for tens values of 40 or 90. For these cases, the Roman numeral representations
are IV (4), IX (9), XL (40), and XC (90). So the Roman numeral representations
for 24, 39, 44, 49, and 94 are XXIV, XXXIX, XLIV, XLIX, and XCIV, respectively.

Write a program to convert a cardinal number to a Roman numeral.

=cut

use strict;
use warnings;

my %rn = (
	1    => 'I',
	5    => 'V',
	10   => 'X',
	50   => 'L',
	100  => 'C',
	500  => 'D',
	1000 => 'M',
);

while ( my $num = <DATA> ) {
	chomp $num;

	my $u   = 0;
	my @n   = map { get_rn( $_ * 10**$u++ ) } reverse split( //, $num );
	my $str = join( '', reverse @n );
	print $str, "\n";
}

exit(0);

sub get_rn {
	my $num = shift;

	return unless $num;    # 0

	return $rn{$num} if $rn{$num};    # Match

	# Special 4 or 9
	if ( $num =~ m/^4|9/ ) {
		my $unit = 10**( length($num) - 1 );
		return $rn{$unit} . $rn{ $unit + $num };
	}

	my $str = '';

	while ($num) {
		my ($max) = grep { $num >= $_ } sort { $b <=> $a } keys %rn;
		$str .= $rn{$max};
		$num -= $max;
	}
	return $str;
}

__DATA__
159
296
3992
