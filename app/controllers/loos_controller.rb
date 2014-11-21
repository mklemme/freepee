class LoosController < ApplicationController
  def index
    @loos = Loo.all
  end

  def new
  	@loo = Loo.new
  end

  def create
  	loo = Loo.create(loo_params)
  end

  def show
    @loos = Loo.all
    render"info"
  end

  private

  def loo_params
  	params.require(:loo).permit(:name, :address)
  end

end
