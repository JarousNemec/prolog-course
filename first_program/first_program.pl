%Elementar basics

digit(0).
digit(1).
digit(2).
digit(3).
digit(4).
digit(5).
digit(5).
digit(6).
digit(7).
digit(8).
digit(9).

% , stands for AND 
% ; stands for OR

/*
1 ?- [first_program].     
true.

2 ?- make.
true.

3 ?- digit(0).
ERROR: Unknown procedure: digit/1 (DWIM could not correct goal)
4 ?- [first_program].
true.

5 ?- digit(0).       
true.

6 ?- digit(0), digit(9)
.
true.

7 ?- digit(0); digit(9).
true .

8 ?- digit(a); digit(9).
true.

9 ?- digit(0), digit(a).
false.
*/

% in prolog the variables are named with UperCase letter at the start. by this, prolog knows that this is variable


% prolog gives us all solutions for the given problem
% prolog is giving us the solutions as the substitutions that he made to make the prescription be true
% by typing ;

/*
11 ?- digit(C).
C = 0 ;
C = 1 ;
C = 2 ;
C = 3 ;
C = 4 ;
C = 5 ;
C = 5 ;
C = 6 ;
C = 7 ;
C = 8 ;
C = 9.

% by pressing SPACE
% by type . we tell prolog that we dont want the rest of solutions

11 ?- 
digit(C).
C = 0 ;
C = 1 ;
C = 2 ;
C = 3 ;
C = 4 ;
C = 5 ;
C = 5 .
*/

%give us all the variations
% with AND
/*
12 ?- digit(C), digit(B).
C = B, B = 0 ;
C = 0,
B = 1 ;
C = 0,
B = 2 ;

and gives us all the variations from 0, 0 to 9, 9

C = 8,
B = 9 ;
C = 9,
B = 0 ;
C = 9,
B = 1 ;
C = 9,
B = 2 ;
C = 9,
B = 3 ;
C = 9,
B = 4 ;
C = 9,
B = 5 ;
C = 9,
B = 5 ;
C = 9,
B = 6 ;
C = 9,
B = 7 ;
C = 9,
B = 8 ;
C = B, B = 9.
*/

%with OR

/*
12 ?- digit(C); digit(B).
C = 0 ;
C = 1 ;
C = 2 ;
C = 3 ;
C = 4 ;
C = 5 ;
C = 5 ;
C = 6 ;
C = 7 ;
C = 8 ;
C = 9 ;
B = 0 ;
B = 1 ;
B = 2 ;
B = 3 ;
B = 4 ;
B = 5 ;
B = 5 ;
B = 6 ;
B = 7 ;
B = 8 ;
B = 9.
*/

/*

=   assigning only values only as string
is  works as normal = in any other languages, meant substitution but with calculate the prescription not just taking the string value
=:= compares numerical values
==  compares only


1 ?- 1+2=2+1
.
false.

2 ?- A=1+2.
A = 1+2.

3 ?- A. 
% ... 1,000,000 ............ 10,000,000 years later
% 
%       >> 42 << (last release gives the question)
3 ?- p(A,2,3)=p(1,2,B)
.
A = 1,
B = 3.

4 ?- A is 1+2
.
A = 3.

5 ?- 3 is 1+2
.
true.

6 ?- 1+2 = 2+1
.
false.

7 ?- 1+2 =:= 2+1 
.
true.

8 ?- A = 1+2.
A = 1+2.
*/

/*

3 ?- digit(A).
A = 0 ;
A = 1 ;
A = 2 ;
A = 3 ;
A = 4 ;
A = 5 ;
A = 5 ;
A = 6 ;
A = 7 ;
A = 8 ;
A = 9.

3 ?- digit(A), A > 5.
A = 6 ;
A = 7 ;
A = 8 ;
A = 9.

4 ?- digit(A), digit(B), A < B.
A = 0,
B = 1 .

5 ?- digit(A), digit(B), A < B.
A = 0,
B = 1 ;
A = 0,
B = 2 ;
A = 0,
B = 3 ;
A = 0,
B = 4 ;
A = 0,
B = 5 ;
A = 0,
B = 5 ;
A = 0,
B = 6 ;
A = 0,
B = 7 ;
A = 0,
B = 8 ;
A = 0,
B = 9 ;
A = 1,
B = 2 ;
A = 1,
B = 3 ;
A = 1,
B = 4 ;
A = 1,
B = 5 ;
A = 1,
B = 5 ;
A = 1,
B = 6 ;
A = 1,
B = 7 ;
A = 1,
B = 8 ;
A = 1,
B = 9 ;
A = 2,
B = 3 ;
A = 2,
B = 4 ;
A = 2,
B = 5 .

5 ?- digit(A), digit(B), A > B.
A = 1,
B = 0 ;
A = 2,
B = 0 ;
A = 2,
B = 1 ;
A = 3,
B = 0 ;
A = 3,
B = 1 ;
A = 3,
B = 2 ;
A = 4,
B = 0 ;
A = 4,
B = 1 ;
A = 4,
B = 2 ;
A = 4,
B = 3 .


// in this case it works with all three operators
7 ?- digit(A), digit(B), digit(C), A \== B, A =\= C, B \= C. 
A = 0,
B = 1,
C = 2 ;
A = 0,
B = 1,
C = 3 ;
A = 0,
B = 1,
C = 4 ;
A = 0,
B = 1,
C = 5 ;
A = 0,
B = 1,
C = 5 ;
A = 0,
B = 1,
C = 6 ;
A = 0,
B = 1,
C = 7 ;
A = 0,
B = 1,
C = 8 .

*/