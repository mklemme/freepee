class LoosController < ApplicationController
  def index
    @loos = Loo.all
    @users = User.all
  end

  def new
  	@loo = Loo.new
  end

  def create
  	loo = Loo.create(loo_params)
  end

  private

  def loo_params
  	params.require(:loo).permit(:name, :address)
  end

end
