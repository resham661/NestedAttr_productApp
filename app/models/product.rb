class Product < ApplicationRecord
  has_one :owner

  accepts_nested_attributes_for :owner
end
