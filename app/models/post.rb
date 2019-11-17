class Post < ApplicationRecord

  belongs_to :restaurant
  has_and_belongs_to_many :customers
  has_many :order

  def self.search(search)
    where("message ILIKE ?", "%#{search}%")
    where("title ILIKE ?", "%#{search}%")

  end

end
