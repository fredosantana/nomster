class Place < ActiveRecord::Base
    belongs_to :user
    validates :name,:description,:address,:presence => true
    validates :name,:length => { minimum: 4 }
end
