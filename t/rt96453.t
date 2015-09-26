use Test::More;
use_ok( Time::ParseDate );

$ENV{'TZ'} = 'UTC';
	is(parsedate('Wed Dec 31 23:59:59 1969', WHOLE => 1), 
		-1, "UTC 1 second before epoch");
	is(parsedate('Thu Jan 01 00:00:00 1970', WHOLE => 1), 
		0, "UTC epoch second 0");
	is(parsedate('Thu Jan 01 00:00:01 1970', WHOLE => 1), 
		1, "UTC 1 second after epoch");

$ENV{'TZ'} = 'MST7MDT';
	is(parsedate('Wed Dec 31 16:59:59 1969', WHOLE => 1), 
		-1, "MST7MDT 1 second before epoch");
	is(parsedate('Wed Dec 31 17:00:00 1969', WHOLE => 1), 
		0, "MST7MDT epoch second 0");	
	is(parsedate('Wed Dec 31 17:00:01 1969', WHOLE => 1), 
		1, "MST7MDT 1 second after epoch");	


done_testing();