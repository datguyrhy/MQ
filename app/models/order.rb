class Order < ApplicationRecord
    belongs_to :post
    has_many :order_detail
    belongs_to :customer
    has_many :menu

end
