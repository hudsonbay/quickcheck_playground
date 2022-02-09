defmodule QuickcheckPlaygroundTest do
  use ExUnit.Case
  doctest QuickcheckPlayground

  test "greets the world" do
    assert QuickcheckPlayground.hello() == :world
  end
end
