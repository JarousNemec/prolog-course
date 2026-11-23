/*
- write(A) -> prints value A
- using '' we can make an atom text from text with UpperCase letters 
- nl -> prints new line
- read(A) -> read from text from prompt (if you want to input some creative text it has to be in ''), there must be a . at the end
- write and read can be executed only once
- fail -> control command
*/

/*
42 ?- write(ahoj).
ahoj
true.

43 ?- write('ahoj').
ahoj
true.

44 ?- nl.

true.

45 ?- A = 'Ahoj Franto',  write(A).
Ahoj Franto
A = 'Ahoj Franto'.

49 ?- read(hi).
|: hoj.

false.

50 ?- read(hi).
|: hi.

true.

49 ?- read(A), write(A).             
|: 'Ahoj franto, jak se dneska Mas?'.
Ahoj franto, jak se dneska Mas?
A = 'Ahoj franto, jak se dneska Mas?'.

*/