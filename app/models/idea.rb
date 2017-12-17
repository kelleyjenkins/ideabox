class Idea < ApplicationRecord
  validates_presence_of :title, :idea
  belongs_to :user
end
