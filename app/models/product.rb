class Product < ActiveRecord::Base
	# attr_accessible :name, :description, :price, :quantity, :active, :category_id
	belongs_to :category

	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100#" }
  	validates_attachment_presence :image
  	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  	

	validates :name, :description, :price, :quantity, :active, presence: true
	validates :name, length: {minimum: 5, maximum: 30}
	validates :description, length: {minimum: 5, maximum: 300}
	validates :price, :quantity, :active, numericality: true
end
