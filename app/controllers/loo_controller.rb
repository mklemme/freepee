class LooController < ApplicationController
  def index
    @loos = Loo.all
  end
end
