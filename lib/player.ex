defmodule ExMon.Player do

  @required_keys [:name, :life, :move_avg, :move_heal, :move_rnd]
  @max_life 100

  @enforce_keys @required_keys
  defstruct @required_keys

  def build(name, move_avg, move_heal, move_rnd) do
    %ExMon.Player{
      name: name,
      life: @max_life,
      move_avg: move_avg,
      move_heal: move_heal,
      move_rnd: move_rnd,
    }
  end

end
