defmodule SumaObjetivo do
  def encontrar_combinaciones(lista, objetivo) do
    encontrar(lista, objetivo, [])
  end

  defp encontrar([], 0, combinacion), do: [Enum.reverse(combinacion)]
  defp encontrar([], _, _), do: []

  defp encontrar([head | tail], objetivo, combinacion) do

    usar = if objetivo - head >= 0 do
      
      encontrar(tail, objetivo - head, [head | combinacion])
    else
      []
    end

    no_usar = encontrar(tail, objetivo, combinacion)

    usar ++ no_usar
end
end

SumaObjetivo.encontrar_combinaciones([2, 3, 5, 7], 10)
|>IO.inspect()
