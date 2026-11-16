:- discontiguous man/1, woman/1, parents/3.

% first generation
% parents
man(karel).
woman(jana).

% second generation
% kids of first generation and their partners
man(jan).
woman(sarka).

man(michala).
woman(josef).

parents(karel, jana, jan).
parents(karel, jana, michala).

% third generation
% kids of second generation and their partners
man(franta).
woman(sylva).

man(tomas).
woman(petra).

man(petr).
woman(iveta).

man(jiri).
woman(anna).

parents(jan, sarka, franta).
parents(jan, sarka, tomas).
parents(josef, michala, iveta).
parents(josef, michala, anna).

% fourth generation
% kids of third generation
woman(romana).
woman(vera).
woman(julie).
man(hektor).

parents(franta, sylva, romana).
parents(tomas, petra, vera).
parents(petr, iveta, julie).
parents(jiri, anna, hektor).

%best practice is to have the first argument as the return variable

father(Father, Child) :-
    man(Father),
    parents(Father, _, Child).

/*
6 ?- father(Who, romana).
Who = franta 
Unknown action: ů (h for help)
Action? .

7 ?- father(jan, Kid).
Kid = franta ;
Kid = tomas.
*/

mother(Mother, Child) :-
    woman(Mother),
    parents(_, Mother, Child).

/*
9 ?- mother(Who, romana).
Who = sylva ;
false.

10 ?- mother(sylva, Child). 
Child = romana.

11 ?- mother(Mother, Child).
Mother = jana,
Child = jan ;
Mother = jana,
Child = michala ;
Mother = sarka,
Child = franta ;
Mother = sarka,
Child = tomas ;
Mother = sylva,
Child = romana ;
Mother = iveta,
Child = julie ;
Mother = anna,
Child = hektor .
*/

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DISJUNCTION %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
/*
parent(Parent, Person) :-
    parents(Parent,_,Person);
    parents(_,Parent,Person).
*/
% OR the better prolog way. It is better to define each rule independently.

parent(Parent, Person) :-
    parents(Parent,_,Person).
parent(Parent, Person) :-
    parents(_,Parent,Person).

/*
13 ?- parent(Parent, julie).
Parent = petr ;
Parent = iveta ;
false.

14 ?- parent(franta, Child).  
Child = romana .

*/

son(Son, Parent) :-
    man(Son),
    parent(Parent, Son).
% if we have already defined the parent function we should use it XD

/*
16 ?- son(Son, josef). 
false.

17 ?- son(Son, jan).   
Son = franta ;
Son = tomas ;
false.
*/

daughter(Daughter, Parent) :-
    woman(Daughter),
    parent(Parent, Daughter).

/*
[1] 22 ?- daughter(Daughter, jan). 
false.

[1] 23 ?- daughter(Daughter, josef). 
Daughter = iveta ;
Daughter = anna ;
false.
*/