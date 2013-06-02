class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.integer :idea_id

      t.timestamps
    end
  end
end
