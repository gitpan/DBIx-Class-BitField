#!perl

use strict;
use warnings;

use File::Find::Rule;
use Test::More;
use Test::Script;

my @modules = File::Find::Rule->relative->file->name('*.pm')->in('lib');
my @scripts = glob "bin/*";

plan tests => scalar(@modules) + scalar(@scripts);

foreach my $file ( @modules ) {
    my $module = $file;
    $module =~ s/[\/\\]/::/g;
    $module =~ s/\.pm$//;
    is( qx{ $^X -M$module -e "print '$module ok'" }, "$module ok", "$module loaded ok" );
}

foreach my $file ( @scripts ) {
    my $script = $file;
    $script =~ s!.*/!!;
    script_compiles_ok( $file, "$script script compiles" );
}