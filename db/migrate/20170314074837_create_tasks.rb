class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :string
      t.string :details
      t.string :string

      t.timestamps
    end
  end
end
