defmodule Darts do
  @type position :: {number, number}

  @doc """
  Calculate the score of a single dart hitting a target
  """
  @spec score(position) :: integer
  def score({x, y}), do: :math.sqrt(x*x + y*y) |> get_score()

  @spec score(number) :: integer
  defp get_score(distance_from_center) when  distance_from_center <= 1, do: 10
  defp get_score(distance_from_center) when  distance_from_center <= 5, do: 5
  defp get_score(distance_from_center) when  distance_from_center <= 10, do: 1
  defp get_score(_distance_from_center), do: 0

end
