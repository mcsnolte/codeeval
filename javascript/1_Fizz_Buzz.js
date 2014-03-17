var fs  = require("fs");
fs.readFileSync(process.argv[2]).toString().split('\n').forEach(function (line) {
    if (line !== "") {
        var input = line.split(/\s+/);
		var i = 0;
        var answer = [];
		for ( i = 1; i <= input[2]; i++ ) {
			if ( i % input[0] === 0 && i % input[1] === 0 ) {
				answer.push('FB');
			}
			else if ( i % input[0] === 0 ) {
				answer.push('F');
			}
			else if ( i % input[1] === 0 ) {
				answer.push('B');
			}
			else {
				answer.push(i);
			}
		}
        console.log( answer.join(' ') );
    }
});

