class Comment < ActiveRecord::Base
<<<<<<< HEAD
    belongs_to :user
    belongs_to :place
    
    RATINGS = {
    'one star'    => '1_star',
    'two stars'   => '2_stars',
    'three stars' => '3_stars',
    'four stars'  => '4_stars',
    'five stars'  => '5_stars'
  }
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end
=======
>>>>>>> 4f4577d132102eeaa35fb3a37641914140bc1fe6
end
