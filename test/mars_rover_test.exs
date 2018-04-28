defmodule MARS_ROVERTest do
  use ExUnit.Case
  doctest MARS_ROVER

  test "greets the world" do
    assert MARS_ROVER.hello() == :world
  end
end
