class LoosController < ApplicationController
  def index
    @loos = Loo.all
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

  def foursquare_results
    lat = foursquare_params[:lat]
    lon = foursquare_params[:lon]
    # redirect_to loos_path
    @loos = Loo.foursquare(lat,lon)
    render :index
  end

  def foursquare_single
    # Get time. Need to pass in a particular format
    # to the Foursquare API. It's required.
    time1 = Time.now
    yyyy = time1.year.to_s
    mm = '%02d' % time1.month.to_s
    dd = '%02d' % time1.day.to_s
    @time2 = yyyy + mm + dd


      def self.foursquare(lat,lon)

      @lat = lat.to_f
      @lon = lon.to_f
      # We need to put client_secret somwhere else. Note that the Foursquare API
      # needs today's date as a parameter.
      client = Foursquare2::Client.new(:client_id => 'ZMGVY0FB55B1F1SGXZUULHJBJASPV4SPACNOQ4TF4BMYCWDG', :client_secret => '0OZJQ5KBQIE1ACR40RRJY2W3FB0ORXMN51GG25LA32ILWJX0', :api_version => @time2.to_s)

      # Finds one specific Foursquare venue. 
      response = client.venue(:fs_id)

      # Generates an array, loos, for use in loos list
      @loo = response.venue.map do |venue|
        {fs_id: venue.id, name: venue.name, address: venue.location.address}
      
      end
  end


    fs_id = params[:id]
    @loo = Loo.foursquare_single(fs_id)

    render :foursquare


    # render :index
  end

  def add_comment
    loo = Loo.find_by_id(params[:id])
    rating = loo.ratings.create(rating_params)
    redirect_to :back
    # rating_info = "##{rating.id.to_s}"
    # redirect_to loo_path(loo,"#{rating_info}")
  end

  private

  def foursquare_params
    params.require(:fs_data).permit(:lat, :lon)
  end

  def foursquare_single_param
    params.require(:loo).permit(:fs_id)
  end

  def loo_params
    params.require(:loo).permit(:name, :address)
  end

  def rating_params
    params.require(:rating).permit(:score, :comment)
  end
end
