defmodule BirdCount do

  def today([]), do: nil
  def today([head | _tail]), do: head

  def increment_day_count([]), do: [1]
  def increment_day_count([head | tail]), do: [head + 1 | tail]


  @spec has_day_without_birds?(maybe_improper_list) :: boolean
  def has_day_without_birds?([]), do: false
  def has_day_without_birds?([head | tail]), do: head == 0 or has_day_without_birds?(tail)

  def total([]), do: 0
  def total([head | tail]), do: head + total(tail)

  def busy_days([]), do: 0
  def busy_days([head | tail]) when head >= 5, do: 1 + busy_days(tail)
  def busy_days([_head | tail]), do: busy_days(tail)

end
