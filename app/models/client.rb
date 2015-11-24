class Client < ActiveRecord::Base
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 255 },
	                  format: { with: VALID_EMAIL_REGEX }
	has_many :cars 
	has_many :sureties
	has_many :contents 
	has_many :fires 
	has_many :healths 
	has_many :lifes

end
