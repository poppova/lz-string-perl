use strict;
use warnings;

use Test;
use Compress::LZString qw/:all/;

BEGIN { plan tests => 5 };

local $/ = undef;
my $text = <DATA>;
ok($text, decompress(compress($text)));
ok($text, decompress_b64(compress_b64($text)));
ok($text, decompress_b64_safe(compress_b64_safe($text)));
ok($text, decompressFromBase64(compressToBase64($text)));
ok($text, decompressFromEncodedURIComponent(compressToEncodedURIComponent($text)));

__DATA__
Měsíčku na nebi hlubokém,
světlo tvé daleko vidí,
po světě bloudíš širokém,
díváš se v příbytky lidí.
Měsíčku, postůj chvíli,
řekni mi, kde je můj milý?
Řekni mu, stříbrný měsíčku,
mé že jej objímá rámě,
aby si alespoň chviličku,
vzpomenul ve snění na mě.
Zasvěť mu do daleka,
řekni mu, kdo tu naň čeká!
O mně-li duše lidská sní,
ať se tou vzpomínkou vzbudí!
Měsíčku, nezasni!
Ta voda studí!
Ježibabo, Ježibabo!
