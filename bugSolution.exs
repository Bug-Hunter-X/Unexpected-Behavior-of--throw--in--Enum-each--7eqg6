```elixir
list = [1, 2, 3, 4, 5]

#Using recursion
recursive_each = fn
  list, acc ->
    case list do
      [] -> acc
      [head | tail] ->
        if head == 3 do
          throw(:error)
        else
          recursive_each.(tail, acc ++ [head])
        end
    end
  end

IO.inspect recursive_each.(list, [])


#Using Enum.reduce
Enum.reduce(list, [], fn x, acc ->
  if x == 3 do
    throw(:error)
  else
    acc ++ [x]
  end
end)
```