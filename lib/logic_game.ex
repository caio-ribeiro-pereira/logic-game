defmodule LogicGame do
  def random_bools(size) do
    if size < 2 do
      :bool_size_error
    else
      for _i <- 1..size, do: Enum.random(0..1)
    end
  end

  def generate_puzzle(bools) do
    if Enum.count(bools) < 2 do
      :bool_size_error
    else
      init_value = "#{Enum.random(["!", ""])}#{hd(bools)}"
      puzzle = Enum.reduce(tl(bools), init_value, fn (i, acc) ->
        next_value = "#{Enum.random(["!", ""])}#{i}"
        next_operation = Enum.random(["&&", "||"])
        acc <> " #{next_operation} #{next_value}"
      end)
      "!!(#{puzzle})"
    end
  end

  def start(size) do
    generate_puzzle(random_bools(size))
  end
end
