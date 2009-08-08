
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'DBIx-Class-BitField',
  NAME      => 'DBIx::Class::BitField',
  AUTHOR    => 'Moritz\ Onken\ \<onken\@netcubed\.de\>',
  ABSTRACT  => 'Store\ multiple\ boolean\ fields\ in\ one\ integer\ field',
  VERSION   => '0.10',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'mit') : ()),
  PREREQ_PM    => {
    "Test::More" => '0.42',
    "SQL::Translator" => '0.09003',
    "DBD::SQLite" => '0',
    "DBIx::Class" => '0.08107',
  },
);
