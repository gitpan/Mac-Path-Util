# $Id: Makefile.PL,v 1.9 2002/09/20 22:54:37 comdog Exp $
use ExtUtils::MakeMaker;

my $tests = do {
	local @ARGV = qw(t/test_manifest);
	my $data = join " ", map {chomp; "t/$_" } <>;
	};
	
WriteMakefile(
    'NAME'		    => 'Mac::Path::Util',
	'VERSION'       => '0.05',
	
    'PM'            => {
     	'lib/Util.pm'         => '$(INST_LIBDIR)/Util.pm',
    	},

	'PREREQ_PM' => {
		File::Find::Rule  => '0',
		Mac::AppleScript  => '0.03',
		Test::More        => '0',
		Test::Pod         => '0',
		Test::Data        => '0',
		Test::Prereq      => '0',
		},
		    	
    test   => { TESTS      => $tests },
    depend => { 'Makefile' => 't/test_manifest' },
    	
	);
