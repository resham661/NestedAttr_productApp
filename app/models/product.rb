class Product < ApplicationRecord
  has_one :owner

  scope :price_limit, -> { where ("price < 1000") }

  accepts_nested_attributes_for :owner
end
