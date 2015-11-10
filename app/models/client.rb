class Client < ActiveRecord::Base
	has_many :products
	has_many :cars, through: :products 
	has_many :bails, through: :products 
	has_many :contents, through: :products 
	has_many :fires, through: :products 
	has_many :healths, through: :products 
	has_many :lifes, through: :products 

end
