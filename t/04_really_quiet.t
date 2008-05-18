use strict;
use warnings;

use lib 'lib';

use Test::More 'no_plan';

use TAP::Harness;
use_ok( 'TAP::Formatter::HTML' );

my @tests = glob( 't/data/*.pl' );
my $f = TAP::Formatter::HTML->new({ really_quiet => 1 });
my $h = TAP::Harness->new({ merge => 1, formatter => $f });

$h->runtests(@tests);

# TODO: test output to a custom FH
