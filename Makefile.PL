# $Id: Makefile.PL,v 1.5 2003/05/12 02:58:46 petdance Exp $
use ExtUtils::MakeMaker;
	
WriteMakefile(
    'NAME'	    => 'Mac::Path::Util',
    'VERSION_FROM'  => 'lib/Util.pm',
	
    'PM' => {
	    'lib/Util.pm'         => '$(INST_LIBDIR)/Util.pm',
    },

    'PREREQ_PM' => {
	'Test::Data'        => '0',
	'Test::More'        => '0',
	'File::Find'	    => '0',
	'File::Spec'	    => '0',
	'base'		    => '0',
    },

    'MAN3PODS'		=> {
	'lib/Util.pm'    => '$(INST_MAN3DIR)/Mac::Path::Util.3',
    },
	    	
    clean => { FILES => 'Mac-Path-Util-*' },
);
