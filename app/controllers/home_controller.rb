class HomeController < ApplicationController
  def index
    @foods = Food.where(:user_id => uid)
  end

  private
    def uid
      current_user.id
    end
end
