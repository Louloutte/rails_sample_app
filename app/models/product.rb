class Product < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0}
    paginates_per 5

    has_many :comments
end
