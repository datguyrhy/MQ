class Post < ApplicationRecord

    belongs_to :restaurant
    has_and_belongs_to_many :customers
    has_many :order

    def checkDiscountEligibility
        result = self.order.sum(:total_payable)
        puts "Total sum for this post: >>>>"
        puts result

        return result
    end
end
