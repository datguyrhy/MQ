class Post < ApplicationRecord

  has_and_belongs_to_many :customers
  has_many :order
end
