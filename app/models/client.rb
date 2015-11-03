class Client < ActiveRecord::Base
	has_many :bails, :dependent => :destroy
	has_many :cars, :dependent => :destroy
	has_many :contents, :dependent => :destroy
	has_many :fires, :dependent => :destroy
	has_many :healths, :dependent => :destroy
	has_many :lifes, :dependent => :destroy

	accepts_nested_attributes_for :cars
end
