class RemoveStringsFromTasks < ActiveRecord::Migration[5.0]
  def change
    remove_column :tasks, :string
  end
end
