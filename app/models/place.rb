class Place < ActiveRecord::Base
    belongs_to :user
<<<<<<< HEAD
    has_many :comments
=======
    
>>>>>>> 4f4577d132102eeaa35fb3a37641914140bc1fe6
    
    geocoded_by :address
    after_validation :geocode
    
    validates :name,:description,:address,:presence => true
    validates :name,:length => { minimum: 4 }
end