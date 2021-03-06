function test_close10()
% test_close10() runs unit tests on close10(a,b) and returns the number that fail
% author: Tim Hickey
% date: Feb 14 2011 (Valentine's Day)

% Modified by Sean Kilachand
% Fixed syntax of test file
% Added 2 test cases
e=0;
e=e+ runTest(8,13,8);
e=e+ runTest(13,8,8);
e=e+ runTest(7,13,0);
e=e+ runTest(13,7,0);
e=e+ runTest(5,21,5);
e=e+ runTest(0,20,0);
e=e+ runTest(10,10,0);
e=e+ runTest(27, -7, 0); 
e=e+ runTest(15.5, 4.5, 0);

fprintf('\nErrors: %d\n\n', e);

end

function k = runTest(a,b,answer)
% runTest(s,n,answer) - checks that everyNth(s,n)==answer

 result = close10(a,b);

 if (result==answer)
   k=0; 
   fprintf('        close10(%d,%d)->%d\n',a,b,answer);
 else
   k=1; 
   fprintf('ERROR!  close10(%d,%d)->%d  <> %d\n',a,b,result,answer);
 end
end

