class AddIdeasUsers < ActiveRecord::Migration
  def change
    create_table :ideas_users, :id => false do |t|
      t.integer :idea_id
      t.integer :user_id
    end
  end
end
