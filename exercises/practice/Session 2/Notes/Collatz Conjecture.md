# Collatz Conjecture

Collatz Conjecture is a maths problem where repeating two operations on a positive integer will always transform the integer into 1.
To apply Collatz Conjecture, the rules are as follows:
    If the number is even, divide the mumber by 2.
    If the number is odd, multiply it by 3 and add 1.

The function that will test for Collatz Conjecture, will expect to recieve the number of steps which it took to reach 1.
    So if we start with 4, we would return 2.
    4 divided by 2 equals 2, 2 divided by 2 equals 1. You can see we divided twice to get 1, so we'd return our steps as 2.

## Objectives
* Modify the provided code so that it produces the string "One for you, one for me.", where "you" is replaced by a name provided by the tests
* If no name is provided, the code should instead return, "you".
* Run the test suite and make sure that it succeeds.

## Topics Covered
* Exceptions and Errors
    * Throwing exceptions
    * Write-Error vs throw
    * Understanding terminating errors
    * `$ErrorActionPreference`

* Numerical Operators
    * Simple maths in code
    * Different operator types (Numerical, Comparison, Assignment and Logical)
    * Creating assignment operators(=/, =+, *=)
    * Modulus Operator
    * Incrementing

* While Loops
    * Where you'd want to use a while loop
    * Setting the condition for a while loop
    * using increment inside of a while loop