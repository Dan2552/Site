class Image < ActiveRecord::Base
  attr_accessible :idea_id, :image
  belongs_to :idea
  mount_uploader :image, ImageUploader
end
