class CustomerProfile < ApplicationRecord
  belongs_to :customer
  has_many :post
  has_many :order
end
