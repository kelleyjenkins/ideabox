class Idea < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :title, :idea
  belongs_to :category
  belongs_to :user
end
