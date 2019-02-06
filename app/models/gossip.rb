class Gossip < ApplicationRecord
	#validates: title, length: {minimum:3}
	#validates: content
	belongs_to :user
    has_many :taggers
    has_many :tags ,through: :taggers 
end
