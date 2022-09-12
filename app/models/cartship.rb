class Cartship < ApplicationRecord
    belongs_to :product
    belongs_to :cart

    def to_s
        attributes.map{ |k, v| { k => v.to_s } }.inject(:merge)
    end
end