module Petshop
	class User < ActiveRecord::Base
		has_many :pets
	end
end
