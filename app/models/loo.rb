class Loo < ActiveRecord::Base
  belongs_to :user
  has_many :ratings


  validates :name, presence: true
  validates :lat, presence: true
  validates :long, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :postalCode, presence: true
  validates :country, presence: true

  time1 = Time.now
  yyyy = time1.year.to_s
  mm = '%02d' % time1.month.to_s
  dd = '%02d' % time1.day.to_s
  @time2 = yyyy + mm + dd

  def self.foursquare(lat,lon)
    
      @lat = lat.to_f
      @lon = lon.to_f
      p lat
      p lon
      # We need to put client_secret somwhere else. Note that the Foursquare API
      # needs today's date as a parameter.
      client = Foursquare2::Client.new(:client_id => 'ZMGVY0FB55B1F1SGXZUULHJBJASPV4SPACNOQ4TF4BMYCWDG', :client_secret => '0OZJQ5KBQIE1ACR40RRJY2W3FB0ORXMN51GG25LA32ILWJX0', :api_version => @time2.to_s)

      # Note that the lat/long is hardcoded. Need to pass the parameters as strings
      # into the 'll' element below. Also Havent' figured out how to add "hotels"
      # as well.
      response = client.search_venues(:ll => "#{@lat},#{@lon}", :query => 'restaurants', :limit => 15)

      # Generates an array, loos, for use in loos list
      @loos = response.venues.map do |venue|
        {fs_id: venue.id, name: venue.name, address: venue.location.address, lat: venue.location.lat, long: venue.location.lng, postalCode: venue.location.postalCode, city: venue.location.city, state: venue.location.state, country: venue.location.country}
      end


      @local_loo = Loo.all.map do |loo|
        {id: loo.id, name: loo.name, address: loo.address, rating: loo.rating, lat: "37.791003499999995", long: "-122.4013247", key: loo.key, baby_changing: loo.baby_changing, handicapped: loo.handicapped, cost: loo.cost, stall: loo.stall, shower: loo.shower, toiletries: loo.toiletries, venue: loo.venue, user_id: loo.user_id}
      end

      @loo_result = @loos + @local_loo

      @loo_results = @loo_result.map do |loo|
        dist = (lat.to_f - loo[:lat].to_f).abs + (lon.to_f - loo[:long].to_f).abs
        {id: loo[:id], name: loo[:name], address: loo[:address], dist: dist}
      end

      @result = @loo_results.sort_by{|e| e[:dist]}

  end
end
