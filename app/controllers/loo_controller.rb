class LooController < ApplicationController
  def index
    @loos = Loo.all
    @users = User.all
  end
end
