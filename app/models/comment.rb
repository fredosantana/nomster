class Comment < ActiveRecord::Base

    belongs_to :user
    belongs_to :place
    after_create :send_comment_email
    
    RATINGS = {
    'one star'    => '*',
    'two stars'   => '**',
    'three stars' => '***',
    'four stars'  => '****',
    'five stars'  => '*****'
  }
    
    def humanized_rating
        RATINGS.invert[self.rating]
    end

    def send_comment_email
      NotificationMailer.comment_added(self).deliver
    end

end
