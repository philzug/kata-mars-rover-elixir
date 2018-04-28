defmodule MARS_ROVER do

  def process(received_command, current_position) do
    case current_position do
      %{:heading => :north} -> %{current_position | y: current_position.y+1}
      %{:heading => :west} -> %{current_position | x: current_position.x-1}
      %{:heading => :east} -> %{current_position | x: current_position.x+1}
      %{:heading => :south} -> %{current_position | y: current_position.y-1}
      _ -> current_position
    end
  end
end
