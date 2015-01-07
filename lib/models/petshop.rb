module AR
  class Petshop < ActiveRecord::Base
    has_many :pets
    has_many :users
  end
end