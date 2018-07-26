class Like < ApplicationRecord
  has_many :comments
  has_many :gossips
  has_many :likes, through: :comments
  has_many :likes, through: :gossips
end
