# Omniauth::Emma

An Omniauth strategy for Emma

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-emma'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-emma

## Usage

Add the following to your `config/initializers/omniauth.rb`:

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :emma, "client_id", "client_secret"
    end

You need to insert your key and secret, which you get when you register your app with Emma.

Now just follow the README at: https://github.com/intridea/omniauth

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
