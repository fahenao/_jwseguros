class Client < ActiveRecord::Base
	has_many :bails
	has_many :cars
	has_many :contents
	has_many :fires
	has_many :healths
	has_many :lifes
end
