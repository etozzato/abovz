# Abovz

An API mocking GEM. Calls to 3rd party APIs can be pricey if only a production API is provided. The use of 3rd party APIs also implies connectivity, variable response time and unpredictable availability.

## Installation

Add this line to your application's Gemfile:

```ruby
group :development. :test do
  gem 'abovz'
end
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install abovz

## Usage

Configure the API that you want to enable (**default** is: _all APIs included_).
At that point, calls to the 3rd party services will be intercepted and mocked.

```ruby
# in /config/initializers/abovz.rb
Abovz.configure do |c|
  c.apis = ['box.rb']
end
```

```WebMock.allow_net_connect!``` is used to allow the normal access to any other URL that is not specified.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
