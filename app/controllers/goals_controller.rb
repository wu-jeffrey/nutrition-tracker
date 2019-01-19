class GoalsController < ApplicationController
  def create
      @goal = Goal.new(goal_params)
      @goal.save
      redirect_to :root
  end

  def update
    @goal = Goal.find(params[:id])
    @goal.update_attributes(goal_params)
    redirect_to :root
  end

  def destroy
      @goal = Goal.joins(params[:id])
      @goal.destroy
      redirect_to :root
  end

  private
    def goal_params
        params.require(:goal).permit(:cal, :protein, :carbohydrates, :fat)
    end
end
