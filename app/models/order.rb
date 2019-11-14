class Order < ApplicationRecord
    belongs_to :post
    has_and_belongs_to_many :menu_items
    belongs_to :customer

    def totalPayable
        result = 0

        self.menu_items.each do |item|
            puts "MODELLL EACH DO LOOP" + item.price.to_s
            result = item.price + result
        end
        puts "FINALL PRICE OF MODEL LOOP"
        puts result

        # puts "Menu items:"
        # puts self.menu_items.inspect
        # totalSum = self.menu_items.sum(:price)
        # puts totalSum

        # Return the result of the query calculation to the controller to save
        return result
    end
end
