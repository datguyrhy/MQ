class Order < ApplicationRecord
    belongs_to :post
    has_and_belongs_to_many :menu_items
    belongs_to :customer
end
