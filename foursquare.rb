# The only one that's likely going to be required is foursquare2.
# I have NOT NOT NOT added these gems to Gemfile yet.
require 'rubygems'
require 'rest-client'
require 'foursquare2'
require 'pry'

time1 = Time.now
yyyy = time1.year
mm = '%02d' % time.month
dd = '%02d' % time.day
time2 = yyyy + mm + dd 



def foursquare(lat, lon)
	# We need to put client_secret somwhere else. Note that the Foursquare API
	# needs today's date as a parameter.
	client = Foursquare2::Client.new(:client_id => 'ZMGVY0FB55B1F1SGXZUULHJBJASPV4SPACNOQ4TF4BMYCWDG', :client_secret => '0OZJQ5KBQIE1ACR40RRJY2W3FB0ORXMN51GG25LA32ILWJX0', :api_version => time2.to_s)

	# Note that the lat/long is hardcoded. Need to pass the parameters as strings
	# into the 'll' element below. Also Havent' figured out how to add "hotels"
	# as well.
	response = client.search_venues(:ll => '37.7749300,-122.4194200', :query => 'restaurants')

	# Generates an array, loos, for use in loos list
	loos = response.venues.map do |venue|
		{id: venue.id, name: venue.name, address: venue.location.address, lat: venue.location.lat, long: venue.location.lng, postalCode: venue.location.postalCode, city: venue.location.city, state: venue.location.state, country: venue.location.country}
	end

	return loos
end
