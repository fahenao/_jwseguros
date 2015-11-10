class Product < ActiveRecord::Base
	belongs_to :clients
	
	belongs_to :cars
	belongs_to :bails
	belongs_to :contents
	belongs_to :fires
	belongs_to :healths
	belongs_to :lifes
end
