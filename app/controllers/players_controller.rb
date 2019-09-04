class PlayersController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    @players = Player.all
  end

  def create
    @player = Player.new(player_params)
    @player.save
    render json: Player.all
  end

  private

  def player_params
    params.require(:player).permit(:name, :team_id)
  end
end
