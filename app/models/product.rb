class Product < ApplicationRecord
    belongs_to :category
    validates :title, presence: true
    validates :price, presence: true

    mount_uploader :image, ImageUploader
end
