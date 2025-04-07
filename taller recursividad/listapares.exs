defmodule Pares do
  def contar_pares([]), do: 0

  def contar_pares([head | tail]) do
    if rem(head, 2) == 0 do
      1 + contar_pares(tail)
    else
      contar_pares(tail)

end
end
end

Pares.contar_pares([1, 2, 3, 4, 5, 6])
|> IO.puts()
