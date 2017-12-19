class RemoveImageFromIdeas < ActiveRecord::Migration[5.1]
  def change
    remove_column :ideas, :image
  end
end
