class Product < ActiveRecord::Base
	# attr_accessible :name, :description, :price, :quantity, :active
	belongs_to :category

	validates :name, :description, :price, :quantity, :active, presence: true
	validates :name, length: {minimum: 5, maximum: 30}
	validates :description, length: {minimum: 5, maximum: 300}
	validates :price, :quantity, :active, numericality: true
end
