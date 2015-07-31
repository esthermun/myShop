namespace :db do 
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'

		[Product].each(&:delete_all)

		Product.populate 15 do |product|
			product.name = Faker::Commerce.product_name
			product.description = Faker::Lorem.paragraph(2)
			#product.image = Faker::Avatar.image
			product.price = Faker::Commerce.price
			product.status = Faker::Number.between(0,1)
			product.created_at = Faker::Time.between(1.year.ago, Time.now)
			product.quantity = Faker::Number.between(1,40)
			product.category_id = Faker::Number.between(1,5)
		end

		Category.populate 6 do |category|
			category.name = Faker::Commerce.department
			category.description = Faker::Lorem.sentences(2)
		end
	end
end
