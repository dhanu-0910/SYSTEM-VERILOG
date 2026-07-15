//Will there be any difference in the values generated in following constraints?

1)
class ABSolveBefore;
rand bit A;
rand bit [1:0] B;
constraint c_ab {
(A==0) -&gt; B==0;
solve A before B;
}
endclass
2)
class ABSolveBefore;
rand bit A;
rand bit [1:0] B;
constraint c_ab {
(A==0) -&gt; B==0;
solve B before A;
}
Endclass

//Output

Case 1: solve A before B
The solver first decides the value of A.
Then it chooses B based on A.
Since A is equally likely to be 0 or 1:
A = 0 occurs about 50% of the time, forcing B = 0.
A = 1 occurs about 50% of the time, allowing B = 0,1,2,3.

Result: (A=0, B=0) occurs much more frequently (about 50%).

Case 2: solve B before A
The solver first decides the value of B.
Then it chooses A based on B.
Since B is equally likely to be 0, 1, 2, or 3:
If B = 1, 2, or 3, then A must be 1.
Only when B = 0 can A be either 0 or 1.

Result: (A=0, B=0) occurs much less frequently (about 12.5%).
