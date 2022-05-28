# Error-handling
Error Handling, Invariants


Assert() function is there for test or check for invariants and internal errors, while the require()is for ensure that 
we have valid input, valid conditions in our contract so that every variable, every condition that we need in order to execute our function correctly is there.

Assert should also be true. If we habe false, than we know that something is wrong with our code, it's not following the logic
that we thought it did

If the invariant is not true - something is wrong with our code. Therefore we go throw and revert the transaction.
