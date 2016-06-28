module DataFetch
	class Main
		def self.get_restaurents
			

      #redirect_to API.restaurants.json
      
      #Below part is the response of the API
      [
        {"restaurant_name"=> "Sarvanna Bhavan", 
          "review_count"=> 30,
          "address"=> {
            "latitude"=> 5647.79,
            "longitude"=> 7654.76, 
            "city"=> "Delhi",
            "state"=> "Delhi",
            "zipcode"=> 345678
            },
            "rating"=> 90
        }, 
        {"restaurant_name"=> "restaurent first",
         "review_count"=> 50,
          "address"=> {
            "latitude"=> 1023.40, 
            "longitude"=> 3456.90, 
            "city"=> "indore",
            "state"=> "Madhya Praddesh",
            "zipcode"=> 452001
            },
            "rating"=> 30
        }
      ]
             

		end
	end
end