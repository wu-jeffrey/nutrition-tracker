module HomeHelper

    def no_food?(foods)
        return foods.empty?
    end
    # TODO: needs to be more DRY
    def total_calories(foods)
        foods.inject(0) { |sum,food| sum + food.cal }
    end

    def total_protein(foods)
        foods.inject(0) { |sum,food| sum + food.protein }
    end

    def total_carbohydrates(foods)
        foods.inject(0) { |sum,food| sum + food.carbohydrates }
    end

    def total_fat(foods)
        foods.inject(0) { |sum,food| sum + food.fat }
    end
end
