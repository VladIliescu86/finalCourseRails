class ChangeManagerToTeamManager < ActiveRecord::Migration[5.2]
  def change
    rename_table :managers, :team_managers
  end
end
