defmodule NucleotideCount do
  @nucleotides [?A, ?C, ?G, ?T]

  @doc """
  Counts individual nucleotides in a DNA strand.

  ## Examples

  iex> NucleotideCount.count('AATAA', ?A)
  4

  iex> NucleotideCount.count('AATAA', ?T)
  1
  """
  @spec count([char], char) :: non_neg_integer
  def count(strand, nucleotide) do
    Map.get(histogram(strand), nucleotide, 0)
  end


  @doc """
  Returns a summary of counts by nucleotide.

  ## Examples

  iex> NucleotideCount.histogram('AATAA')
  %{?A => 4, ?T => 1, ?C => 0, ?G => 0}
  """
  @spec histogram([char]) :: map
  def histogram(strand, counts \\ default_histogram())
  def histogram([current | remaining], counts) do
    counts = Map.update(counts, current, 1, &(&1 + 1))
    histogram(remaining, counts)
  end

  def histogram([], counts), do: counts

  defp default_histogram do
    @nucleotides |> Map.new(fn (nucleotide) -> {nucleotide, 0} end)
  end
end
