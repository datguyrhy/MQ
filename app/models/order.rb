class Order < ApplicationRecord
    belongs_to :post
    has_many :menu_item
    belongs_to :customer

end
