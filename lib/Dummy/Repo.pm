package Dummy::Repo;
use strict;
use warnings;
use v5.10.0;

BEGIN {
    use Exporter ();
    use vars qw($VERSION @EXPORT @ISA);
    $VERSION     = '0.01';
    @ISA         = qw(Exporter);
    @EXPORT      = qw( word );
}

sub word { return shift };

1;

