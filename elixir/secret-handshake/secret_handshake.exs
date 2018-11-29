defmodule SecretHandshake do
  @commands ["jump", "close your eyes", "double blink", "wink"]

  @doc """
  Determine the actions of a secret handshake based on the binary
  representation of the given `code`.

  If the following bits are set, include the corresponding action in your list
  of commands, in order from lowest to highest.

  1 = wink
  10 = double blink
  100 = close your eyes
  1000 = jump

  10000 = Reverse the order of the operations in the secret handshake
  """
  @spec commands(code :: integer) :: list(String.t())
  def commands(code) when is_integer(code) do
    commands(<< code :: size(5) >>)
  end

  # 1          1       1        1        1
  # ^ Reverse  ^ Jump  ^ Close  ^ Blink  ^ Wink
  def commands(<< reverse :: size(1), jump :: size(1), close :: size(1), blink :: size(1), wink :: size(1) >>) do
    shake = 
      [jump, close, blink, wink]
      |> Enum.zip(@commands)
      |> Enum.reduce([], fn
        {0, _}, acc -> acc
        {1, cmd}, acc -> [cmd | acc]
      end)

    if reverse == 1, do: Enum.reverse(shake), else: shake
  end
end
