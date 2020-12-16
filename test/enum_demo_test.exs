defmodule EnumDemoTest do
  use ExUnit.Case
  doctest EnumDemo

  test "greets the world" do
    assert EnumDemo.hello() == :world
  end
end
