use strict;
use warnings;

use ExtUtils::MakeMaker 6.64;

WriteMakefile(
    ABSTRACT_FROM    => 'lib/Perl/Box.pm',
    VERSION_FROM     => 'lib/Perl/Box.pm',
    AUTHOR           => 'G. Casati <fibo@cpan.org>',
    NAME             => 'Perl::Box',
    LICENSE          => 'artistic_2',
    MIN_PERL_VERSION => '5.20.0',
    META_MERGE       => {
        resources => {
            homepage   => 'https://metacpan.org/pod/Perl::Box',
            license    => 'http://g14n.info/artistic-license',
            repository => 'https://github.com/fibo/Perl-Box-pm',
            bugtracker => 'https://github.com/fibo/Perl-Box-pm/issues'
        },
    },
    PREREQ_PM => {
        'App::FatPacker'     => '0.010002',
        'Catalyst::Devel'    => '1.39',
        'Dancer'             => '1.3132',
        'Dist::Zilla'        => '5.031',
        'DateTime'           => '1.18',
        'DBI'                => '1.633',
        'DBIx::Class'        => '0.082810',
        'Mojolicious'        => '5.77',
        'Moose'              => '2.1403',
        'Moo'                => '1.007000',
        'Task::BeLike::FIBO' => '0.14',
        'Template'           => '2.26',
        'Test::Class'        => '0.48',
        'Test::Most'         => '0.34',
        'YAML'               => '1.14',
      },
    BUILD_REQUIRES => {
        'ExtUtils::MakeMaker' => '6.64',
    },
    test          => { TESTS => 't/*.t' },
    TEST_REQUIRES => {
        'Test::Compile'      => '1.2.1',
        'Test::More'         => '1.001009',
        'Test::Pod'          => '1.48',
    }
);

