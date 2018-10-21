class FoodsController < ApplicationController
    def new
        @food = Food.new
    end

    def create
        @food = Food.new(food_params)
        @food.save
        redirect_to :root
    end

    def destroy
        @article = Food.find(params[:id])
        @article.destroy
        redirect_to :root
    end

    private
        def food_params
            params.require(:food).permit(:name, :cal, :protein, :carbohydrates, :fat)
        end
end
