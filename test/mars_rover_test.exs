defmodule MARS_ROVERTest do
  use ExUnit.Case
  doctest MARS_ROVER
  @default_positon %{:x => 0,:y => 0,:heading => :north}

  test  "should move north when facing north and receiving forward command" do
    initial_position = @default_positon
    expected_position = %{initial_position | y: 1}
    commands = "f"
    assert MARS_ROVER.process(commands, initial_position) == expected_position;
  end

  test  "should move west when facing west and receiving forward command" do
    initial_position = %{@default_positon | heading: :west}
    expected_position =%{initial_position | x: -1}
    commands = "f"
    assert MARS_ROVER.process(commands, initial_position) == expected_position;
  end

  test  "should move east when facing east and receiving forward command" do
    initial_position = %{@default_positon | heading: :east}
    expected_position =%{initial_position | x: 1}
    commands = "f"
    assert MARS_ROVER.process(commands, initial_position) == expected_position;
  end

  test  "should move south when facing south and receiving forward command" do
    initial_position = %{@default_positon | heading: :south}
    expected_position =%{initial_position | y: -1}
    commands = "f"
    assert MARS_ROVER.process(commands, initial_position) == expected_position;
  end

end
