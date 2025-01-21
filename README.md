# Elixir Enum.each and throw

This example demonstrates unexpected behavior when using `throw` within an `Enum.each` loop in Elixir.  While one might expect `throw` to immediately halt the loop, it continues to process all elements before raising the exception.

The `bug.exs` file showcases this issue.  The `bugSolution.exs` file provides a correct approach using recursion or `Enum.reduce` for controlled exception handling during iteration.