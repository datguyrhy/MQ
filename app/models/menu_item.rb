class MenuItem < ApplicationRecord
    has_and_belongs_to_many :orders
    belongs_to :restaurant
    def something
      "#{name}, $#{price}"
    end
end
