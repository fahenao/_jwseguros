class Client < ActiveRecord::Base
	has_many :cars 
	has_many :sureties
	has_many :contents 
	has_many :fires 
	has_many :healths 
	has_many :lifes

end
