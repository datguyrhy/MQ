class Post < ApplicationRecord
    belongs_to :customer
    belongs_to :restaurant
    has_many :order

    # default :sent => 'false'
    # default :received => 'false'
end
