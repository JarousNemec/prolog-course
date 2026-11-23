:- discontiguous man/1, woman/1, parents/3.

% first generation
% parents
man(karel).
woman(jana).

% second generation
% kids of first generation and their partners
man(jan).
woman(sarka).

man(josef).
woman(michala).

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

sibling1(S1, S2) :-    
    parents(Father, Mother, S1),
    parents(Father, Mother, S2),
    S1 \= S2.

sibling2(S1, S2) :-  
    S1 \= S2,  
    parents(Father, Mother, S1),
    parents(Father, Mother, S2).

/*
11 ?- sibling1(Iveta, Anna).
Iveta = jan,
Anna = michala 
Iveta = michala,
Anna = jan ;
Iveta = franta,
Anna = tomas ;
Iveta = tomas,
Anna = franta ;
Iveta = iveta,
Anna = anna ;
Iveta = anna,
Anna = iveta ;
false.
*/


brother(Brother, X) :-
    man(X),
    sibling1(Brother, X).

sister(Sister, X) :-
    woman(X),
    sibling1(Sister, X).

/*
17 ?- brother(B, franta).
B = tomas ;
false.

17 ?- sister(S, iveta). 
S = anna ;
false.
*/
ancestor(Ancestor, X) :-
    parent(Ancestor, X).

ancestor(Ancestor, X) :-
    parent(Parent, X),
    ancestor(Ancestor, Parent).

/*
Romana
    Sylva
    Franta
        Sarka
        Jan
            Karel 
            Jana

29 ?- ancestor(Ancestor, romana).      
Ancestor = franta ;
Ancestor = sylva ;
Ancestor = jan ;
Ancestor = sarka ;
Ancestor = karel ;
Ancestor = jana ;
*/

child(Child, Ancestor) :-
    ancestor(Ancestor, Child).

/*
33 ?- child(Child, karel).  
Child = jan ;
Child = michala ;
Child = franta ;
Child = tomas ;
Child = romana ;
Child = vera ;
Child = iveta ;
Child = anna ;
Child = julie ;
Child = hektor ;
*/

person(P) :-
    man(P) ; woman(P).

/*
41 ?- person(P), \+ man(P).
P = jana ;
P = sarka ;
P = josef ;
P = sylva ;
P = petra ;
P = iveta ;
P = anna ;
P = romana ;
P = vera ;
P = julie.

41 ?- person(P), \+ \+ man(P).
P = karel ;
P = jan ;
P = michala ;
P = franta ;
P = tomas ;
P = petr ;
P = jiri ;
P = hektor ;
false.
*/

% when there is a way without negation do it that way

print_ancestors:-
    write('Enter person name:'),
    nl,
    read(Person),
    write('Loaded person name is '),
    write(Person),
    nl,
    ancestor(Ancestor, Person),
    write(Ancestor),
    nl,
    fail.
print_ancestors. % cosmetic tuning

/*
[1] 58 ?- print_ancestors. 
Enter person name:
|: romana.          
Loaded person name is romana
franta
sylva
jan
sarka
karel
jana
false.
*/