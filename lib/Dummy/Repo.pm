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

=head1 NAME

Dummy::Repo - A repo solely for testing other git repos

=head1 SYNOPSIS

    use Dummy::Repo;
    use Test::More qw(no_plan);

    my ($word, $rv);
    $word = 'alpha';
    $rv = word($word);
    is($rv, $word, "Got expected word: $word");

=head1 DESCRIPTION

This library exists solely for the purpose of providing a git repository to be
used in the testing of other git repositories or git functionality.

This library is set up in the form of a CPAN-ready Perl distribution
consisting of:

=over 4

=item *

A module, F<Dummy::Repo>,  which exports a single subroutine, C<word()>, which
does nothing but return a string provided as its argument.

=item *

A test file, F<t/001_load.t>, which confirms that C<word()> works as expected.

=back

What is more important is the fact that F<t/001_load.t> has been modified in a
series of commits, sometimes to change the word used in testing C<word()> and
sometimes only to add or subtract whitespace within the test file.  We end up
with a series of commits which can each be tested with:

    prove -vb t/001_load.t

The objective is to generate B<differences> in the output of F<prove> at
certain commits but not other commits.

=head1 AUTHOR

James E Keenan (jkeenan at cpan dot org).  Copyright 2016.

=cut

1;

