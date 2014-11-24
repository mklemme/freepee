# Freepee documentation

Live link: [freepee](http://freepee.club/).

Freepee makes it easy to find a loo near you. 

Tech stack:

* Ruby on Rails;
* MVC infrastructure;
* 3 models: User, Loos, and ratings;
* Google map api for directions.

Freepee uses these gems:
* [Devise](https://github.com/plataformatec/devise): handles user authentication
* [Cancancan](https://github.com/CanCanCommunity/cancancan): formerly cancan, handles authroization per session instance
* [Figaro](https://github.com/laserlemon/figaro): keeps API information secure for pushing code to Github
* [Pry](https://github.com/rweng/pry-rails): For development
* [Bootstrap](https://github.com/seyhunak/twitter-bootstrap-rails): includes Twitter bootstrap in our project
* [Foursquare2](https://github.com/mattmueller/foursquare2): the Foursquare API for finding venues with lat/long input
* [Mailform](https://github.com/plataformatec/mail_form): sends email straight from a form. 

## Getting started

If you would like to create a local version of Freepee:

```ruby
git clone https://github.com/mklemme/freepee.git
```

Since we are using API keys, you will need to add your own using the gem, Figaro.

Add Figaro to your gemfile

```ruby
gem 'figaro'
```

Run the bundle command to install it.

Next, you need to run the Figaro generator:

```console
figaro install
```

Add API keys to the file Figaro generated in `config/application.yml`. This app expects these API values defined:

```ruby
mandrill_username: mandrill_login
mandrill_api: api-key_abcdef123456
```

Create local instance of the database:

```console
rake db:create && rake db:migrate
```



### Contributors

We have a long list of valued contributors. Check them all at:

https://github.com/mklemme/freepee/graphs/contributors


### Bug reports

If you discover a problem with Freepee, we would like to know about it. However, we ask that you please review these guidelines before submitting a bug report:

https://github.com/mklemme/freepee/wiki/?Bug-reports

## License

insert license info

