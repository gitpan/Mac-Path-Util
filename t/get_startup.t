# $Id: get_startup.t,v 1.1 2002/09/22 19:21:27 comdog Exp $

use Test::More tests => 2;

use Mac::Path::Util;

my $Startup = 'Otter';

my $util = Mac::Path::Util->new();
isa_ok( $util, 'Mac::Path::Util' );

my $startup = $util->_get_startup;
is( $startup, $Startup );
