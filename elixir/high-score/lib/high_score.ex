defmodule HighScore do
  @default_initial_score 0
  def new(), do: %{}

  def add_player(scores, name, score \\ @default_initial_score), do: Map.put(scores, name, score)

  def remove_player(scores, name), do: Map.delete(scores, name)

  def reset_score(scores, name), do: scores |> Map.fetch(name) |> fetch_score(scores, name)

  defp fetch_score({:ok, _}, scores, name), do: Map.replace(scores, name, @default_initial_score)
  defp fetch_score(:error, scores, name), do: add_player(scores, name)
  def update_score(scores, name, score) do
    scores
    |> Map.update(name, score, fn existing_value -> existing_value + score end)
  end

  def get_players(scores), do: scores |> Map.keys()
end
