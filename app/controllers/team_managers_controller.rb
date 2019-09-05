class TeamManagersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @team_managers = TeamManager.all
  end

  def show
  end

  # GET /teams/new
  def new
    @team_manager = TeamManager.new
  end

  def create
    @team_manager = TeamManager.new(manager_params.merge(team_id: params[:team_id]))
    @team_manager.save
    # render json: TeamManager.all
  end

  def update

  end

  def destroy

  end

  private

  def manager_params
    params.require(:team_manager).permit(:name)
  end
end
