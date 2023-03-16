defmodule Lasagna do

  @minutes_by_lasagna 40
  @minutes_by_layer 2

  def expected_minutes_in_oven, do: @minutes_by_lasagna

  def remaining_minutes_in_oven(oven_minutes), do: expected_minutes_in_oven() - oven_minutes

  def preparation_time_in_minutes(layers), do: layers * @minutes_by_layer

  def total_time_in_minutes(layers, oven_minutes), do: preparation_time_in_minutes(layers) + oven_minutes

  def alarm, do: "Ding!"
end
