class Citie < ApplicationRecord
  #validates:true,presence:true	
  has_many:users
end
