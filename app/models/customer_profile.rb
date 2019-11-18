class CustomerProfile < ApplicationRecord
  has_many:order
  has_many:post
  belongs_to:customer
end
