defmodule LogicGameTest do
  use ExUnit.Case
  doctest LogicGame

  test "random puzzle when bools is [1,1]" do
    possible_results = [
      "!!(1 && 1)", "!!(!1 && 1)", "!!(1 && !1)", "!!(!1 && !1)",
      "!!(1 || 1)", "!!(!1 || 1)", "!!(1 || !1)", "!!(!1 || !1)"
    ]
    assert LogicGame.generate_puzzle([1,1]) in possible_results
  end

  test ":bool_size_error when generate_puzzle bools is empty" do
    assert LogicGame.generate_puzzle([]) == :bool_size_error
  end

  test "random bools when size is 2" do
    assert LogicGame.random_bools(2) in [[0,0],[1,0],[0,1],[1,1]]
  end

  test ":bool_size_error when random_bools size is zero" do
    assert LogicGame.random_bools(0) == :bool_size_error
  end
end
