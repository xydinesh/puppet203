class localusers {
	user { 'admin': 
		ensure		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/admin',
		managehome	=> true,
		gid		=> 'wheel',
		password	=> '$6$MfbhqGVn2J$zPi4jLK7rCR4tkARVxsLw36Hg8bafoWuPauD9oobT369SuRYQkcGGWWG8EPkTN/TtKOSDu1HXJs.tT8iMatCi1',
	}

	user { 'dinesh':
		ensure 		=> present,
		shell		=> '/bin/bash',
		home		=> '/home/dinesh',
		managehome	=> true,
		groups		=> ['wheel', 'finance'],
		password	=> '$6$MfbhqGVn2J$zPi4jLK7rCR4tkARVxsLw36Hg8bafoWuPauD9oobT369SuRYQkcGGWWG8EPkTN/TtKOSDu1HXJs.tT8iMatCi1',
	}
}
