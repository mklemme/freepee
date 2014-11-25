class GlobalController < ApplicationController
  layout "home", :only => :index
  def index
    gon.alreadyCalled = false

  end

  def about
  end

  def contact
  end

  def terms
  end

  def privacy
  end
end
