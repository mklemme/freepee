
#### User enables geolocation
- User starts app
- App initiates two searches: foursquare & our app
- App sends lat/long to foursquare
- App searches our db for lat/long

#### User manually inputs location
- User searches by address
- send address to google
- google returns lat/long
- app sends lat/long to foursquare
- app searches our db by lat/long

#### User creates new loo (using address)
- User submits loo info: name, address, attributes
- send address to google. return lat/long
- create new loo with parameters

#### User creates new loo (using geolocation)
- User submits loo info: name, attributes
- send lat/long to google. return address
- create new loo with parameters
