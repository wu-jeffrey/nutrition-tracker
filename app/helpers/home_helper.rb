module HomeHelper

    def no_food?(foods)
        return foods.empty?
    end
    
    # TODO: needs to be more DRY
    def total_calories(foods)
        foods.inject(0) { |sum,food| sum + food.cal }
    end

    def format_protein(foods, goal)
        "#{foods.inject(0) { |sum,food| sum + food.protein }}/#{goal.protein}"
    end

    def format_carbs(foods, goal)
        "#{foods.inject(0) { |sum,food| sum + food.carbohydrates }}/#{goal.carbohydrates}"
    end

    def format_fat(foods, goal)
        "#{foods.inject(0) { |sum,food| sum + food.fat }}/#{goal.fat}"
    end

    def calories_left(foods, goal)
        calories = goal.cal || 2400
        calories - total_calories(foods)
    end

    def protein_left(foods, goal)
      calories = goal.cal || 2400
      calories - total_calories(foods)
    end

    def titleize(str)
        str.split(" ").map{|word| word.capitalize}.join(" ")
    end
end
