class Food < ActiveRecord::Base
    validates :name, presence: true,
                     length: { minimum: 2 }
    validates :cal, presence: true
end
