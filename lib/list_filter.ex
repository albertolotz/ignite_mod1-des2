defmodule ListFilter do
  def call(list) do
    list
    |> Enum.filter(fn elem -> String.match?(elem, ~r/^[[:digit:]]+$/) end)
    |> Enum.map(fn elem -> String.to_integer(elem) end)
    |> Enum.count(fn elem -> rem(elem, 2) != 0 end)
  end
end
