class TestingController < ApplicationController

  def index
    @loo = Loo.last
  end

  def show
    @loo = Loo.find(params[:id])
  end
  
end
