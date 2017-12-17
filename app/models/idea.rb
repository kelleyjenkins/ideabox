class Idea < ApplicationRecord
  validates_presence_of :idea
  belongs_to :user
end
