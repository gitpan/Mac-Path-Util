# $Id: load.t,v 1.2 2002/11/26 19:38:05 comdog Exp $

BEGIN {
	use File::Find::Rule;
	@classes = map { my $x = $_;
		$x =~ s|^blib/lib/||;
		$x =~ s|/|::|g;
		$x =~ s|\.pm$||;
		$x;
		} File::Find::Rule->file()->name( '*.pm' )->in( 'blib/lib' );
	}

use Test::More tests => scalar @classes;
	
foreach my $class ( @classes )
	{
	print "bail out! $class could not compile!" unless use_ok( $class );
	}
