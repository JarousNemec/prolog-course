/*
  =============================================================================
  PROGRAM DOCUMENTATION: Hello World in Prolog
  =============================================================================
  This program demonstrates the basic syntax of the Prolog language and 
  shows how to output text to the console using a custom rule (predicate).
  
  SYNTAX EXPLANATION:
  - hello     : The name of our rule (predicate) used to trigger the program.
  - :-        : The "neck" operator. It means "if" or "is defined as".
  - writeln() : A built-in predicate that prints text to the screen and moves to a new line.
  - '...'     : Text strings (atoms) in Prolog are enclosed in single quotes.
  - .         : The period. Every fact, rule, and query in Prolog MUST end with a period.
  =============================================================================
*/

% Definition of the 'hello' rule
helloworld :- 
    writeln('Hello, World!'). % Prints the text and adds a newline character


/*
  =============================================================================
  HOW TO RUN THE PROGRAM (STEP-BY-STEP GUIDE)
  =============================================================================
  1. Open the integrated terminal in VS Code (Shortcut: Ctrl + Shift + `)
  
  2. Start the SWI-Prolog interpreter by typing:
     swipl
     
  3. Load this file into the running interpreter (don't forget the period!):
     ?- [hello].
     
  4. Run the program by querying the 'hello' rule:
     ?- hello.
     
  5. Exit Prolog and return to your standard terminal:
     ?- halt.  (or press Ctrl + D)
  =============================================================================
*/
