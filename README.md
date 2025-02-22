# Elixir Enum.each with throw - Unexpected behavior

This example demonstrates an uncommon issue related to using `throw` within an `Enum.each` loop in Elixir. While `throw` correctly interrupts the loop's execution when the condition `x == 3` is met, the subsequent `IO.puts("Next")` statement unexpectedly still executes. This demonstrates the asynchronous nature of exception handling and how it does not immediately halt the execution of all statements within the Enum.each function.

## How to reproduce the issue
Run the code in `bug.exs` to see the unexpected output where "Next" is printed even after the exception is thrown.

## Solution
The solution provided in `bugSolution.exs` addresses this by using a `try-catch` block within the `Enum.each` function, providing better control over exception handling and preventing the unintended execution of code after the exception is thrown.