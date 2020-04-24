# LogicGame

Simple boolean logic generator written in Elixir

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `logic_game` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:logic_game, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/logic_game](https://hexdocs.pm/logic_game).

## Running

For while you can use the module `LogicGame.start(number_of_conditions)` and will return a random string of boolean conditions to check if the result will be true or false, for example:

``` elixir
LogicGame.start(10) # !!(0 && !1 || !0 && 1 || 0 && 0 || !1 && !0 || !0 && 1)
```