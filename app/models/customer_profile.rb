class CustomerProfile < ApplicationRecord
  has_many:order
  has_many:post
end
