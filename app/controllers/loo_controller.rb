class LooController < ApplicationController
  def index
    @loo = Loo.last
  end

  def show
    @loo = Loo.find(1)
  end
end
