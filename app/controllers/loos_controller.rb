class LoosController < ApplicationController
  def index
    @loos = Loo.all
    @users = User.all
  end

  def new
  end

  def create
  end

end
