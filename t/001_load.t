# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'Dummy::Repo' ); }

my $word = 'kappa';
is(word($word), $word, "Got word: $word");
