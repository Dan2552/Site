class Task < ActiveRecord::Base
  attr_accessible :done, :idea_id, :parent_task_id, :title

  belongs_to :idea
  has_many :children, foreign_key: "parent_task_id", class_name: "Task"
  belongs_to :parent, foreign_key: "parent_task_id", class_name: "Task"

  validates_presence_of :idea

  def self.top_level_for idea
    where(idea_id: idea.id, parent_task_id: nil)
  end
end
