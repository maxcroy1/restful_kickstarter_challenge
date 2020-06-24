class RemoveBackersFromProjects < ActiveRecord::Migration[6.0]
  def change
    remove_column :projects, :backers, :integer
  end
end
