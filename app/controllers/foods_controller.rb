class FoodsController < ApplicationController
    def new
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        @food.save
        redirect_to '/'
    end

    private
        def food_params
            params.require(:food).permit(:name, :cal, :protein, :carbohydrates, :fat)
        end
end