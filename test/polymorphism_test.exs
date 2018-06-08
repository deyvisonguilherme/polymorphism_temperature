defmodule PolymorphismTest do
  use ExUnit.Case
  doctest Polymorphism

  test "greets the world" do
    assert Polymorphism.hello() == :world
  end
end
