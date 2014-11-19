# Freepee documentation

Live link: [freepee](http://freepee.net/).

Freepee makes it easy to find a loo near you. 

Tech stack:

* Ruby on Rails;
* MVC infrastructure;
* 3 models: User, Loos, and ratings;
* Google map api for directions.

Freepee uses these gems:

* [Database Authenticatable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/DatabaseAuthenticatable): encrypts and stores a password in the database to validate the authenticity of a user while signing in. The authentication can be done both through POST requests or HTTP Basic Authentication.
* [Omniauthable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Omniauthable): adds OmniAuth (https://github.com/intridea/omniauth) support.
* [Confirmable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Confirmable): sends emails with confirmation instructions and verifies whether an account is already confirmed during sign in.
* [Recoverable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Recoverable): resets the user password and sends reset instructions.
* [Registerable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Registerable): handles signing up users through a registration process, also allowing them to edit and destroy their account.
* [Rememberable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Rememberable): manages generating and clearing a token for remembering the user from a saved cookie.
* [Trackable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Trackable): tracks sign in count, timestamps and IP address.
* [Timeoutable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Timeoutable): expires sessions that have no activity in a specified period of time.
* [Validatable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Validatable): provides validations of email and password. It's optional and can be customized, so you're able to define your own validations.
* [Lockable](http://rubydoc.info/github/plataformatec/devise/master/Devise/Models/Lockable): locks an account after a specified number of failed sign-in attempts. Can unlock via email or after a specified time period.


### Bug reports

If you discover a problem with Freepee, we would like to know about it. However, we ask that you please review these guidelines before submitting a bug report:

https://github.com/mklemme/freepee/wiki/?Bug-reports


## Getting started

If you would like to create a local version of Freepee:

```ruby
git clone https://github.com/mklemme/freepee/new/master
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

## License

insert license info
