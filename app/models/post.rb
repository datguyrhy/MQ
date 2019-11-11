class Post < ApplicationRecord
  has_many :restaurants
  has_many :customers
end
