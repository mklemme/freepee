


## User personas

### Flavio - standard
- Youngish dude
- 27
- Ubran
- has "control"
- urgent need of bathroom

#### Flavios's user flow
- Home screen > allow geolocation
- loo list
- single loo
- directions
- leave review
- login
- leave review:action
- close 

### Mary
- Mother
- needs baby changing station
- can possibly wait a few
- 35

#### Mary's user flow
- Home screen > zip code
- loo list action:filter > baby change
- single loo
- directions
- close

## Models

### User models
- Username
- password
- has_many ratings
- has_many loos

### Loo model
- Name
- Address
- Hours
- cost select: fee/customer only/no fee
- baby changing type: boolean
- Key required type: boolean
- loo type: stalls / sinlge occupancy
- Shower type:boolean
- Tolietries provided type: boolean
- Hours through: yelp
- venue: Business/public
- has_many ratings/comments

### Review model
- 140 characters
- rating (up/down)
- anonymous review option

## APIs
- directions - Google map : Directions service in the Google Maps JavaScript API Google Directions API
- Yelp: For each request, Yelp returns 40 resutls. Requires OAuth authentication. Requires lat/long for location searches

## Webscrape	
- Source seed data from the web via a web scrape 
