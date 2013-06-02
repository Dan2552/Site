class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.boolean :done
      t.integer :parent_task_id
      t.integer :idea_id

      t.timestamps
    end
  end
end
