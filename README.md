# csce-355-programming-assignment
[Programming assignment for Foundations of Computation](https://cse.sc.edu/~pade/csce355/programming-assignment.pdf)

Austin Pahl, University of South Carolina Fall 2016 CSCE 355

In this assignment, I solve some problems related to the theory of computation.

The following tasks are addressed:

#### Simulating a DFA. 
First read the description of the DFA. The description is in a file named by
the first command line argument (see below for information about the format of this file).
Next read a series of zero or more strings from another text file named by the second command
line argument. These are inputs to the DFA. Each string will take up an entire line of text,
ending with a newline character (which is not included in the string). For each string, write
to standard output either “accept” or “reject” according to the behavior of the DFA on the
string. End each output word with a newline.

#### Determining properties of a DFA. 
The sole command line argument gives the file describing
the DFA. Output is to standard output and consists of just two words separated by
whitespace: the first is either “empty” or “nonempty”, and the second is either “finite” or
“infinite”. Note that the language of a DFA is nonempty iff some final state is reachable
from the start state, and the language is infinite iff there is some cycle that is reachable from
the start state and from which a final state is reachable.
