# $Id: get_startup.t,v 1.4 2002/11/27 03:53:17 comdog Exp $

use Test::More tests => 2;

use Mac::Path::Util;

my $Startup = Mac::Path::Util::STARTUP;

my $util = Mac::Path::Util->new();
$util->use_applescript(0);
isa_ok( $util, 'Mac::Path::Util' );

my $startup = $util->_get_startup;
is( $startup, $Startup, '_get_startup returns right name' );

$util->use_applescript(1);
$util->clear_startup;

my $startup = $util->_get_startup;
diag( "\nThis test is just for fun\n",
	"You need Mac::AppleScript to make it discover the true name\n",
	"I think your startup volume name is  [$startup]\n" );
