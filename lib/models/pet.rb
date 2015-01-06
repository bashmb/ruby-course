module Petshop
	class Pet < ActiveRecord::Base
		belongs_to :user
	end
end
