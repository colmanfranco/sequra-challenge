class Shopper < ApplicationRecord
  validates_presence_of :name, :email, :nif
end
