class Life < ActiveRecord::Base
	has_many :products
	has_many :clients, through: :products

end
