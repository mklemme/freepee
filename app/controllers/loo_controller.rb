class LooController < ApplicationController
  def index
    @loo = Loo.last
  end
end
