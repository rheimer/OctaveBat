% Stuart Davis
% HW4

function e = test_stringE()
	% stringE(string) Return true if the given string contains between 1 and 3 'e' chars.
	
	% test_stringE() runs unit tests on stringE(str) and returns the number that fail
	e = 0;
	e = e + runTest('',0); % <1 e's
	e = e + runTest('abecd', 1); % 1 e
	e = e + runTest('abeecd', 1); % 2 e's
	e = e + runTest('abecde', 1); % 2 e's
	e = e + runTest('eabcde', 1); % 2 e's
	e = e + runTest('eee', 1); % 3 e's
	e = e + runTest('eEeabcde', 1); % 3 e's
	e = e + runTest('eeabecde', 0); % >3 e's
	
	function k = runTest(str,answer)
		% runTest(str,answer) - checks that stringE(str) == answer
		result = stringE(str);
		if (result == answer)
			k = 0;
			fprintf('        stringE(%s) -> %d\n',str,answer);
		else
			k = 1;
			fprintf('ERROR!  stringE(%s) -> %d  <> %d\n',str,result,answer);
		end
	end
end

