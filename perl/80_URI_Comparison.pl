#!/usr/bin/env perl

=head1 DESCRIPTION

Determine if two URIs match. For the purpose of this challenge, you should use
a case-sensitive octet-by-octet comparison of the entire URIs, with these
exceptions:

1. A port that is empty or not given is equivalent to the default port of 80

2. Comparisons of host names MUST be case-insensitive

3. Comparisons of scheme names MUST be case-insensitive

4. Characters are equivalent to their % HEX HEX encodings. (Other than typical
reserved characters in urls like , / ? : @ & = + $ #)

=cut

use strict;
use warnings;

while (<DATA>) {
	chomp;
	my ( $first, $second ) = map { parse_uri($_) } split /;/;
	if ( grep { $first->{$_} ne $second->{$_} } keys %{$first} ) {
		print "False\n";
	}
	else {
		print "True\n";
	}
}
exit(0);

sub parse_uri {
	my $uri = shift;

	if (
		m/
		^
		(?<scheme> https?)
		:\/\/
		(?<domain> [^\/]+?)
		:?(?<port> \d+)?
		(?<path> \/.*)
		/xi
	  )
	{
		my %uri = (%+);
		$uri{scheme} = lc $uri{scheme};
		$uri{domain} = lc $uri{domain};
		$uri{port} //= 80;
		$uri{path} =~ s/%([0-9a-f]{2})/chr(hex($1))/eig;
		return \%uri;
	}
}

__DATA__
http://abc.com:80/~smith/home.html;http://ABC.com/%7Esmith/home.html
http://example.com:8081/path/index(<[<~}%%".html;HTTP://EXAMPLE.COM:8081/path/index%28%3C%5B%3C%7E%7D%25%25%22.html
