class Product < ApplicationRecord
  has_one :brand

  scope :price_limit, -> { where ("price < 1000") }

  accepts_nested_attributes_for :brand
end
