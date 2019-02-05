class Gossip < ApplicationRecord
	belongs_to :user
    has_many :taggers
  has_many :tags ,through: :taggers 
end
