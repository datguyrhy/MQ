class Post < ApplicationRecord

  belongs_to :restaurant
  has_many :customers

end
