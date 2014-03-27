#!/usr/bin/env perl

=head1 DESCRIPTION

We have come up with the best possible language called Codel. To translate text
into Codel, we take any message and replace each English letter with another
English letter. This mapping is one-to-one and onto, which means that the same
input letter always gets replaced with the same output letter, and different
input letters always get replaced with different output letters. A letter may
be replaced by itself. Spaces are left as-is.

For example (and here is a hint!), our translation algorithm includes the
following three mappings: 'b' -> 'n', 'j' -> 'u', and 'v' -> 'g' is based on
the best possible replacement mapping, and we will never change it. It will
always be the same. In every test case. We will not tell you the rest of our
mapping because that would make the problem too easy, but there are a few
examples below that may help.

=cut

use strict;
use warnings;
use DDP;

my $input =
'rbc vjnmkf kd yxyqci na rbc zjkfoscdd ew rbc ujllmcp tc rbkso rbyr ejp mysljylc kd kxveddknmc re jsicpdrysi de kr kd eoya kw aej icfkici re zjkr';
my $output =
'the public is amazed by the quickness of the juggler we think that our language is impossible to understand so it is okay if you decided to quit';

my @in  = split //, $input;
my @out = split //, $output;

my %lookup = map { $_ => shift @out } @in;
$lookup{n} = 'b';
$lookup{u} = 'j';
$lookup{g} = 'v';

#p %lookup;
#my @missing_key = grep { !$lookup{$_} } ( 'a' .. 'z' );
#p @missing_key;
#my %values = reverse %lookup;
#my @missing_value = grep { !$values{$_} } ( 'a' .. 'z' );
#p @missing_value;

$lookup{h} = 'x';

while ( my $line = <DATA> ) {
	chomp $line;
	my $str = join( '', map { $lookup{$_} } split( //, $line ) );
	print "$str\n";
}
exit(0);

__DATA__
de kr kd eoya kw aej icfkici re zjkr

fcpyxkf tkrb rbca y sctrets ksdkic
ks epklksym dyki gjmfys pcxyksci iets
bkdrepa tcpc bkdrepkf pykmtya uebs ks
chkdrcsfc rbc gjmfys fbcyv npets bkdrepkf
chvysdkes tyd rbc ks tyd njkmiksl
ew y vjn krd rbc pcnjkmr
ks rbc tbkfb vjn bkdrepa ikgkdkes
ikdrpkfr rbc evcsci mefym mefym epklksym
xysa bkdrepa rbc ysi pcnjkmr typv
vjn ew ks fcpyxkf pcvpcdcsryrkgc iets
syxc sctrets tkmmkyxd ks npyksd yddefkyrci
ysi y set pcvpcdcsryrkgc rbc kxxklpysr
fesdrpjfrkes rbc rbc ew yiyx y
yiyx ncfyxc pyks rekmcrd lpccs wepcgcp
legcpsxcsr rbc ikdrpkfr ypfbkrcfry icfepyrci vmyfc
rbc ks rbc npyksd tpkrcp re
rbca krd nkocpd ser wyfr rbc
rekmcrd csgkpesxcsr rbejlb syxc vpeucfrd ks
de kr kd eoya kw aej icfkici re zjkr
ew fcpyxkf rbc wep ew rbpejlbejr
kxxklpysr ksrcpkep ks krd tcpc rkxc
rbc ew rbpejlbejr rbc re pcnjkmr
cmdctbcpc tkrb cypma fcpyxkf acyp pyks
scypna yiyx ysi yiyxdiets rerym xyoc
krd pcvpcdcsryrkgc rkxc fypikww wkpc krd
drpccr fyit mysc fypikww gjmfys tcmdb
gerci njkmiksl re ijpksl rbc tcmdb
pcnjkmr tkmmkyxd ikdrpkfr xyoc rbejlb yiyxdiets
tc rbkso rbyr ejp mysljylc kd kxveddknmc re jsicpdrysi
mysc fyxpy rbc sctrets uebs ks
pcryksci kr wcyrjpcd mysc rbpejlbejr ypc
ncfyxc na fyit xyoc kd tyd
rbc bkdrepkf fpcyrkes dyrjpiya ew npyksd
kd rbc mynejp fpcyrkes ysi ew
yiipcdd ipkso rbc rkmcd fyxpy ew
tyd ys rkmcd ew fpcyrkes gerci
wpex rbc fypikww evcsci chvysdkes syxc
vjn njkmiksl pcryksci fypikww chyxvmcd rbc
vjn cmdctbcpc tbkrxepc uebs evcsci yvvcypci
rbc vjnmkf kd yxyqci na rbc ichrcpkra ew rbc ujllmcp
