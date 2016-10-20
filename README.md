# dummyrepo
A git repo solely for testing other git repos

NAME
    Dummy::Repo - A repo solely for testing other git repos

SYNOPSIS
        use Dummy::Repo;
        use Test::More qw(no_plan);

        my ($word, $rv);
        $word = 'alpha';
        $rv = word($word);
        is($rv, $word, "Got expected word: $word");

DESCRIPTION
    This library exists solely for the purpose of providing a git repository
    to be used in the testing of other git repositories or git
    functionality.

    This library is set up in the form of a CPAN-ready Perl distribution
    consisting of:

    *   A module, Dummy::Repo, which exports a single subroutine, "word()",
        which does nothing but return a string provided as its argument.

    *   A test file, t/001_load.t, which confirms that "word()" works as
        expected.

    What is more important is the fact that t/001_load.t has been modified
    in a series of commits, sometimes to change the word used in testing
    "word()" and sometimes only to add or subtract whitespace within the
    test file. We end up with a series of commits which can each be tested
    with:

        prove -vb t/001_load.t

    The objective is to generate differences in the output of prove at
    certain commits but not other commits.

AUTHOR
    James E Keenan (jkeenan at cpan dot org). Copyright 2016.

INSTALL

    perl Makefile.PL
    make
    make test
    make install

If you are on a windows box you should use 'nmake' rather than 'make'.
