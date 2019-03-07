class Movie < ActiveRecord::Base
    #gets unique movie ratings
   def self.ratings
       result = {}
  	  self.select(:rating).uniq.each do |movie|
  		result[movie.rating] = 1
	  end
  	  return result
   end
end
