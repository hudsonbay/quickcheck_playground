defmodule QuickcheckPlayground do
  @moduledoc """
  Documentation for `QuickcheckPlayground`.
  """
  def is_sorted([]), do: true

  def is_sorted(list) do
    list
    |> Enum.zip(tl(list))
    |> Enum.all?(fn {x, y} -> x <= y end)
  end
end
