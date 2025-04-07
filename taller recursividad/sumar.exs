defmodule Suma do
  def sumar([]), do: 0

  def sumar([fila | resto]) do
    sumar_fila(fila) + sumar(resto)
  end

  defp sumar_fila([]), do: 0

  defp sumar_fila([x | xs]) do
    x + sumar_fila(xs)
  end
end

Suma.sumar([[4, 5], [8, 9], [7, 4]])
|> IO.puts()
