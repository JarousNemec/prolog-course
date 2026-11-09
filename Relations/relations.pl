% === 1. FACTS (Must start with lowercase letters) ===
parent(jiri, alena).
parent(jiri, petr).
parent(jana, alena).
parent(jana, petr).
parent(petr, tereza).

male(jiri).
male(petr).
female(jana).
female(alena).
female(tereza).

% === 2. RULE (Uppercase letters = Variables, comma = AND) ===
grandfather(Grandpa, Child) :-
    male(Grandpa),
    parent(Grandpa, Parent),
    parent(Parent, Child).

/*
=== 3. QUICK QUERY CHEATSHEET ===
Start:  swipl
Load:   ?- [relations].

YES/NO Query:
?- grandfather(jiri, tereza).      -> Output: true.

Variable Query:
?- grandfather(Who, tereza).       -> Output: Who = jiri.

Multiple Answers (press semicolon ";" for the next result):
?- parent(jiri, Child).            -> Output: Child = alena ; Child = petr.

Exit:   ?- halt.
*/
