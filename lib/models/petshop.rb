module Petshop
	class Petshop < ActiveRecord::Base
		has_many :pets
	end
end

