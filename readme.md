# Prolog for Beginners 🚀

Welcome to this repository! This is a collection of simple Prolog programs designed for beginners who are just starting to learn Logic Programming. 

Here, you will find basic examples covering fundamental concepts like **facts, rules, variables, and queries**.

---

## 🛠️ Installation

To run these programs, you need to have **SWI-Prolog** installed on your system. 

### Windows (using Chocolatey)
If you use Windows and have the [Chocolatey](https://chocolatey.org) package manager installed, you can install SWI-Prolog quickly via administrative PowerShell or Command Prompt:

```bash
choco install swi-prolog
```

*For other operating systems, you can download the installer directly from the [SWI-Prolog website](https://swi-prolog.org).*

---

## 📋 What's Inside?

A typical beginner example in this repository (like the family relations script) demonstrates the core pillars of Prolog:

1. **Facts:** Defining basic truths (e.g., `male(jiri).`, `parent(jiri, alena).`).
2. **Rules:** Defining logical relationships using variables and conditions (e.g., finding a `grandfather`).
3. **Queries:** Asking Prolog questions to check facts or find unknown values using variables.

---

## 💻 How to Run the Programs

### 1. Start SWI-Prolog
Open your terminal, command prompt, or PowerShell and launch the Prolog shell:
```bash
swipl
```

### 2. Load a File
Load your chosen Prolog file (for example, `relations.pl`) into the interpreter:
```prolog
?- [relations].
```
*(Note: Do not include the `.pl` extension inside the brackets, and don't forget the period `.` at the end!)*

### 3. Query the Database
Once the file is loaded, you can run different types of queries:

*   **Yes/No Query** (Checking if a statement is true):
    ```prolog
    ?- grandfather(jiri, tereza).
    % Output: true.
    ```

*   **Variable Query** (Asking Prolog to find a value):
    ```prolog
    ?- grandfather(Who, tereza).
    % Output: Who = jiri.
    ```

*   **Multiple Answers** (If a query has more than one solution, press the semicolon `;` key to see the next result):
    ```prolog
    ?- parent(jiri, Child).
    % Output: 
    % Child = alena ;
    % Child = petr.
    ```

### 4. Exit
To close the SWI-Prolog interpreter, type:
```prolog
?- halt.
```

---

Happy coding! 🧠
