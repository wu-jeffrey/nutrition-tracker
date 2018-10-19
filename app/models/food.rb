class Food < ActiveRecord::Base
    validates :name, presence: true,
                     length: { minimum: 2 }
    validates :cal, presence: true

    validates_numericality_of :cal, :protein, :carbohydrates, :fat, :greater_than_or_equal_to => 0
end
