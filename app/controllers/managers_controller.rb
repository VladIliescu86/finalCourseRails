class ManagersController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @managers = Manager.all
  end

  def show
  end

  # GET /teams/new
  def new

  end

  def create
    @manager = Manager.new(manager_params)
    @manager.save
    render json: Manager.all
  end

  def update

  end

  def destroy

  end

  private

  def manager_params
    params.require(:manager).permit(:name, :team_id)
  end
end
