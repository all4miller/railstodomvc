class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :what
      t.timestamp :closed_at
      t.timestamps null: false
    end
  end
end
