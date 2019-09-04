class AddTeamToManager < ActiveRecord::Migration[5.2]
  def change
    add_reference :managers, :team, foreign_key: true
  end
end
