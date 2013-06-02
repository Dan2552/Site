class Idea < ActiveRecord::Base
  attr_accessible :description, :title
  has_many :images
  has_and_belongs_to_many :users
end
