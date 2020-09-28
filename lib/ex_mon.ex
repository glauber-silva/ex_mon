defmodule ExMon do
  alias ExMon.{Game, Player}
  alias ExMon.Game.Status
  alias ExMon.Game.Actions

  @computer_name "Robotinik"

  def create_player(name, move_avg, move_heal, move_rnd) do
    Player.build(name, move_avg, move_heal, move_rnd)
  end

  def start_game(player) do
    @computer_name
    |> create_player(:punch, :heal, :kick)
    |> Game.start(player)

    Status.print_round_message()
  end

  def make_move(move) do
    Actions.fetch_move(move)
  end
end
