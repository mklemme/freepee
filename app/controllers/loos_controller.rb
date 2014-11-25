class LoosController < ApplicationController
  def index
    @loos = Loo.all
    gon.alreadyCalled = true
  end

  def new
    @loo = Loo.new
  end

  def show
    @loo = Loo.find_by_id(params[:id])

  end

  def show_map
    @loo = Loo.new
    gon.lat = params[:lat]
    gon.lon = params[:lon]
    render :show_map
  end

  def create
    loo = Loo.create(loo_params)
    loo.ratings.create(loo_params[:rating])
    redirect_to loo_path(loo)
  end

  def foursquare_results
    lat = foursquare_params[:lat]
    lon = foursquare_params[:lon]
    gon.alreadyCalled = true
    @loos = Loo.foursquare(lat,lon)
    render :index
  end

  def foursquare_single

    fs_id = params[:fs_id]

    @loo_hash = Loo.foursquare_single(fs_id)
    @loo_photo = @loo_hash['photos']['groups'].first['items'].first['prefix'] +"width960"+ @loo_hash['photos']['groups'].first['items'].first['suffix']
    @loo = Loo.new
    @loo.name = @loo_hash['name']
    @loo.address = @loo_hash['location']['address']
    # @loo.fs_id = params[:fs_id]
    @loo.city = @loo_hash['location']['city']
    @loo.state = @loo_hash['location']['state']
    @loo.postalCode = @loo_hash['location']['postalCode']
    @loo.lat = @loo_hash['location']['lat']
    @loo.lon = @loo_hash['location']['lng']

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
    params.require(:loo).permit(:name, :address, :key, :baby_changing, :handicapped, :cost)
  end

  def rating_params
    params.require(:rating).permit(:score, :comment)
  end
end
