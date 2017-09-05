
class HomesController < ApplicationController
  def index
    @homes = Home.all
  end

  def show
    @home = Home.find(params[:id])
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    if @home.save
      redirect_to @home
    else
      render 'new'
    end
  end

  private
  def home_params
    params.require(:home).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end
end
