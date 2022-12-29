defmodule KitchenCalculator do
  def get_volume(volume_pair) do
    elem(volume_pair, 1)
  end

  def to_milliliter(volume_pair = {:cup, _}) do
    {:milliliter, elem(volume_pair, 1) * 240}
  end
  def to_milliliter(volume_pair = {:fluid_ounce, _}) do
    {:milliliter, elem(volume_pair, 1) * 30}
  end
  def to_milliliter(volume_pair = {:teaspoon, _}) do
    {:milliliter, elem(volume_pair, 1) * 5}
  end
  def to_milliliter(volume_pair = {:tablespoon, _}) do
    {:milliliter, elem(volume_pair, 1) * 15}
  end
  def to_milliliter(volume_pair = {:milliliter, _}) do
    volume_pair
  end

  def from_milliliter(volume_pair, unit = :cup) do
    {unit, elem(volume_pair, 1) / 240}
  end
  def from_milliliter(volume_pair, unit = :fluid_ounce) do
    {unit, elem(volume_pair, 1) / 30}
  end
  def from_milliliter(volume_pair, unit = :teaspoon) do
    {unit, elem(volume_pair, 1) / 5}
  end
  def from_milliliter(volume_pair, unit = :tablespoon) do
    {unit, elem(volume_pair, 1) / 15}
  end
  def from_milliliter(volume_pair, unit = :milliliter) do
    {unit, elem(volume_pair, 1)}
  end

  @spec convert(
          {:cup, number}
          | {:fluid_ounce, number}
          | {:milliliter, any}
          | {:tablespoon, number}
          | {:teaspoon, number},
          :cup | :fluid_ounce | :milliliter | :tablespoon | :teaspoon
        ) ::
          {:cup, float}
          | {:fluid_ounce, float}
          | {:milliliter, any}
          | {:tablespoon, float}
          | {:teaspoon, float}
  def convert(volume_pair, unit) do
    volume_pair
    |> to_milliliter()
    |> from_milliliter(unit)
  end
end
