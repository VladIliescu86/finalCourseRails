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
    @team_manager = TeamManager.new(manager_params)
    @team_manager.save
    render json: TeamManager.all
  end

  def update

  end

  def destroy

  end

  private

  def manager_params
    params.require(:team_manager).permit(:name, :team_id)
  end
end
