module AR
  class Shop < ActiveRecord:Base
    has_many :pets
    has_many :users
  end
end