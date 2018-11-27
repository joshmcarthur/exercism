defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    word_matcher = ~r/((?:\p{L}|-|[0-9])+)/iu
    sentence = String.downcase(sentence)
    Regex.scan(word_matcher, sentence, capture: :all_but_first) 
      |> List.flatten 
      |> count_words
  end

  defp count_words(words, counts \\ %{}) 

  defp count_words([word | words], counts) do
    counts = Map.update(counts, word, 1, &(&1 + 1))
    count_words(words, counts)
  end

  defp count_words([], counts) do
    counts
  end
end
