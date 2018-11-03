defmodule Bob do
  ##
  # Notes:
  #   I got stuck trying to solve this with regexps that were getting repeated
  #   and more and more complex as I tried to dig my way out of the problem.
  #   Next time, I should make a rule that I should start by making a `cond` matcher
  #   a private method immediately, and focus the logic in there. I still could have
  #   fixed this with regexp, but I could have reasoned with one problem at a time.
  def hey(input) do
    cond do
      silent?(input) -> "Fine. Be that way!"
      shouting_question?(input) -> "Calm down, I know what I'm doing!"
      question?(input) -> "Sure."
      shouting?(input) -> "Whoa, chill out!"
      true -> "Whatever."
    end
  end

  defp question?(input), do: String.ends_with?(input, "?")
  defp silent?(input), do: "" == String.trim(input)
  defp shouting?(input), do: input == String.upcase(input) && letters?(input)
  defp shouting_question?(input), do: shouting?(input) && question?(input)

  # This regexp needs understanding, but I believe I've used it before in Ruby.
  # It means 'is this letter a letter, in any locale'
  # https://regex101.com/r/RzfnTY/1/
  defp letters?(input), do: input =~ ~r/\p{L}+/
end
