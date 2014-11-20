class LoosController < ApplicationController
  def index
    @loos = Loo.all
    @users = User.all
  end

  def new
    @loo = Loo.new
  end

  def show
    @loo = Loo.find_by_id(params[:id])
  end

  def create
  	loo = Loo.create(loo_params)
    redirect_to loo_path(loo)
  end

  def add_comment
    loo = Loo.find_by_id(params[:id])
    rating = loo.ratings.new(rating_params)

    redirect_to :back
  end

  private

  def loo_params
  	params.require(:loo).permit(:name, :address)
  end

  def rating_params
    params.require(:rating).permit(:rating, :comment)
  end
end
