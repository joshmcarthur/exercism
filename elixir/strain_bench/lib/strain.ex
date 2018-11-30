defmodule Strain do
  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns true.

  Do not use `Enum.filter`.
  """
  @spec keep(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def keep_enum(list, fun) do
    list
    |> Enum.map(&(fun.(&1) && &1))
    |> Enum.reject(&(!&1))
  end

  def keep(list, fun), do: for x <- list, fun.(x), do: x

  @doc """
  Given a `list` of items and a function `fun`, return the list of items where
  `fun` returns false.

  Do not use `Enum.reject`.
  """
  @spec discard(list :: list(any), fun :: (any -> boolean)) :: list(any)
  def discard(list, fun) do
    list
    |> Enum.map(&(!fun.(&1) && &1))
    |> Enum.reject(&(!&1))
  end
end
