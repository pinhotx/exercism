defmodule Username do

  def sanitize(''), do: ''
  def sanitize([head | tail])
    when (head >= ?a and head <= ?z), do: [head | sanitize(tail)]
  def sanitize([head | tail]), do: fetch_character(head) ++ sanitize(tail)

  defp fetch_character(character) do
    case character do
      ?ß -> 'ss'
      ?ä -> 'ae'
      ?ö -> 'oe'
      ?ü -> 'ue'
      ?_ -> '_'
      _ -> ''
    end
  end
end
