# $Id: identity.t,v 1.1 2002/09/22 19:21:27 comdog Exp $

use Test::More tests => 8;

use Mac::Path::Util;

my $util = Mac::Path::Util->new('/Users/brian');
isa_ok( $util, 'Mac::Path::Util' );
is( $util->type, Mac::Path::Util::DARWIN );

$util = Mac::Path::Util->new('Otter:Users:brian');
isa_ok( $util, 'Mac::Path::Util' );
is( $util->type, Mac::Path::Util::MACOS );

$util = Mac::Path::Util->new('Otter');
isa_ok( $util, 'Mac::Path::Util' );
is( $util->type, Mac::Path::Util::DONT_KNOW );

$util = Mac::Path::Util->new('Otter: foo / bar');
isa_ok( $util, 'Mac::Path::Util' );
is( $util->type, Mac::Path::Util::DONT_KNOW );
