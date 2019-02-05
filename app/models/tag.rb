class Tag < ApplicationRecord
  has_many :taggers
  has_many :gossip ,through: :taggers
end
