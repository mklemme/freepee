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
    loo.ratings.create(loo_params[:rating])
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

    fs_id = params[:fs_id]

    loo_hash = Loo.foursquare_single(fs_id)
    @loo = Loo.new
    @loo.name = loo_hash['name']
    @loo.address = loo_hash['location']['address']
    # @loo.fs_id = params[:fs_id]
    @loo.city = loo_hash['location']['city']
    @loo.state = loo_hash['location']['state']
    @loo.postalCode = loo_hash['location']['zip']

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
