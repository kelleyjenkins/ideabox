class Category < ApplicationRecord
  validates_presence_of :name, uniqueness: true
  has_many :ideas
end
