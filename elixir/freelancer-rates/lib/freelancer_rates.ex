defmodule FreelancerRates do
  @times_per_day 8.0
  @times_per_month 22.0
  def daily_rate(hourly_rate), do: @times_per_day * hourly_rate

  def apply_discount(original_price, discount), do: original_price - (original_price * discount / 100 )

  def monthly_rate(hourly_rate, discount), do: (@times_per_month * hourly_rate) |> daily_rate() |> apply_discount(discount) |> Kernel.ceil()

  def days_in_budget(budget, hourly_rate, discount), do: Float.floor(budget / (hourly_rate |> daily_rate() |> apply_discount(discount)), 1)
end
