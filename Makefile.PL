
use ExtUtils::MakeMaker;

WriteMakefile( 
	'VERSION_FROM' => 'lib/Time/ParseDate.pm',
	'NAME' => 'Time-modules',
	($] >= 5.005 ?
	    ('ABSTRACT' => 'Parse and format time values',
	     'AUTHOR'	=> 'David Muir Sharnoff <muir@idiom.org>') : ()),
	'dist' => { COMPRESS=>"gzip", SUFFIX=>"gz" },
	);
