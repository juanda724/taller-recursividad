defmodule Transpocision do
  def transponer([]), do: []
  def transponer([[] | _]), do: []

  def transponer(matriz) do
    [Enum.map(matriz, &hd/1) | transponer(Enum.map(matriz, &tl/1))]
    
  end
end

Transpocision.transponer([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
|>IO.inspect()
