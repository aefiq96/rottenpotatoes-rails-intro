class Movie < ActiveRecord::Base
    #gets unique movie ratings
   def self.ratings
        Movie.select(:rating).distinct.inject([]) { |a, m| a.push m.rating}
   end
end
