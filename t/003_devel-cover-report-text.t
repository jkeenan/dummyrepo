# -*- perl -*-

# t/003_devel-cover-report-text.t - demonstrate bug in
# Devel::Cover::Report::Text

use Test::More qw(no_plan); # tests => 6;

BEGIN { use_ok( 'Dummy::Repo' ); }

my @data = ( 13, '***', 33, 0, 1, '', '$x and not $y' );
is(@data, 7, "found 7 elements in data array");
