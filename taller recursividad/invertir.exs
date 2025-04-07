defmodule Invertir do
  def invertir(lista), do: invertir(lista, [])

  defp invertir([], acumulador), do: acumulador

  defp invertir([head | tail], acumulador) do
    invertir(tail, [head | acumulador])
end
end

Invertir.invertir([1, 2, 3, 4, 5])
|>IO.inspect()
