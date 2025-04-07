defmodule SumaObjetivo do
  def combinacion([], 0), do: true
  def combinacion([], _), do: false

  def combinacion([head | tail], objetivo) do
    usar = combinacion(tail, objetivo - head)
    no_usar = combinacion(tail, objetivo)

    usar or no_usar
end
end

SumaObjetivo.combinacion([3, 4, 7, 2], 9)
|>IO.inspect()

SumaObjetivo.combinacion([1, 5, 9], 8)
|>IO.inspect()
