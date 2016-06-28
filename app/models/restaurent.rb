class Restaurent < ActiveRecord::Base
		#require 'DataFetch/Main'
	  require "#{Rails.root}/lib/DataFetch/Main" 
		#there is another way to load lib files add the lib folder in autoloads paths
		def self.get_all_restaurents
			restaurant = DataFetch::Main.get_restaurents
			arr = []

			restaurant.each do |obj|
				arr.push({'name' => obj['restaurant_name'], 'review_count' =>obj['review_count'], 'latitude' => obj['address']['latitude'], 'longitude' => obj['address']['longitude'], 'city' => obj['address']['city'], 'state' => obj['address']['state'], 'zip' => obj['address']['zipcode'], 'rating'=> obj['rating']})
			end
			return arr
		end
end
