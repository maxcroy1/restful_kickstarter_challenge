class AddNumberOfBackersToProjects < ActiveRecord::Migration[6.0]
  def change
    add_column :projects, :number_of_backers, :integer
  end
end
