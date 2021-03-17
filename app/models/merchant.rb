class Merchant < ApplicationRecord
  validates_presence_of :name, :email, :cif
end
