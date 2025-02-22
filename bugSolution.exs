```elixir
list = [1, 2, 3, 4, 5]

Enum.each(list, fn x ->
  try do
    if x == 3 do
      throw(:error)
    else
      IO.puts(x)
    end
    IO.puts("Next")
  catch
    :error -> IO.puts("Error caught")
  end
end)
```