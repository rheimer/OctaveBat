function y = test_hasTeen();

% test_hasTeen runs several tests
% on the hasTeen function, displays hasTeen's
% output for each test, 
% and returns the number of tests that fail.
% Author: Gabriel Bronk
% 3/2/11
%Mehreen Asad (Added 2 new test cases)

y = 0;
y = y + runtest(12,20,13,true);
y = y + runtest(12,19,20,true);
y = y + runtest(19,20,12,true);
y = y + runtest(19,20,13,true);
y = y + runtest(19,18,13,true);
y = y + runtest(12,20,100,false);
y = y + runtest(90,12,20,false);
y = y + runtest(14,15,16,true);
y = y + runtest(12,12,12,false);
y = y + runtest(13,13,13,true);
y = y + runtest(-2,0,4,false);
y = y + runtest(12,16,1,true);                                                 
                                                                                                       
end



function q = runtest(a,b,c,answer);

% runtest(a,b,c,answer) calls hasTeen(a,b,c)
% to get the result, compares with the answer
% and returns 1 if an error, 0 if not.
% It also prints out the test results.     


result = hasTeen(a,b,c);

if (result == answer);
q = 0;
fprintf('      hasTeen(%d,%d,%d)=%d\n',a,b,c,result);
else
q = 1;
fprintf('ERROR:hasTeen(%d,%d,%d)->%d <> %d\n',
       a,b,c,result,answer);
end

end
