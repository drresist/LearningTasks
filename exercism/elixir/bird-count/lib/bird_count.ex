defmodule BirdCount do
  def today(_=[]) do nil end
  def today([head|_tail]) do
    head
  end

  def increment_day_count([head | tail]) do
    [head + 1 | tail]
  end
  def increment_day_count(_ = []) do
    [1]
  end

  def has_day_without_birds?(_=[]) do false end
  def has_day_without_birds?([head|tail]) do
    cond do
      head != 0 -> has_day_without_birds?(tail)
      head == 0 -> true
    end
  end

  def total(_=[]) do 0 end
  def total([head|tail]) do
    0 + head + total(tail)
  end

  def busy_days(_=[]) do 0 end
  def busy_days([head | tail]) do
    if head >= 5 do 1 + busy_days(tail) else 0 + busy_days(tail) end
  end
end
