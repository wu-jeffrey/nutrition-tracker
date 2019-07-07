class FoodsController < ApplicationController
  def new
    @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to :root
    else
      redirect_to :root, flash: { error: @food.errors.full_messages }
    end
  end

  def destroy
    @food = Food.find(params[:id])
    @food.destroy
    redirect_to :root
  end

  private
    def food_params
      food_params = params[:food]
      food_params[:cal] = MathStringParserService.run(food_params[:cal])
      food_params[:protein] = MathStringParserService.run(food_params[:protein]) || 0
      food_params[:carbohydrates] = MathStringParserService.run(food_params[:carbohydrates]) || 0
      food_params[:fat] = MathStringParserService.run(food_params[:fat]) || 0
      params.require(:food).permit(:name, :cal, :protein, :carbohydrates, :fat, :user_id)
    end
end
