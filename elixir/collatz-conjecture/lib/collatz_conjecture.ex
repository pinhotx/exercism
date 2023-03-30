defmodule CollatzConjecture do
  @doc """
  calc/1 takes an integer and returns the number of steps required to get the
  number to 1 when following the rules:
    - if number is odd, multiply with 3 and add 1
    - if number is even, divide by 2
  """
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  def calc(input) when input > 0 and not is_binary(input) do
    get_steps(input)
  end
  @spec calc(input :: pos_integer()) :: non_neg_integer()
  defp get_steps(input, times \\ 0)
  defp get_steps(input, steps) when input == 1, do: steps
  defp get_steps(input, steps) when rem(input, 2) == 0, do:
  input
  |> divide_even()
  |> get_steps(steps + 1)


  defp get_steps(input, steps), do: multiply_and_sum_odd(input) |> get_steps(steps + 1)

  defp divide_even(even), do: div(even, 2)
  defp multiply_and_sum_odd(odd), do: odd * 3 + 1
end
