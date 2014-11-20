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

  private

  def loo_params
  	params.require(:loo).permit(:name, :address)
  end

end
