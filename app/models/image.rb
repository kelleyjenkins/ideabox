class Image < ApplicationRecord
  has_many :idea_images, dependent: :nullify
  has_many :ideas, {through: :idea_images}, dependent: :nullify
end
