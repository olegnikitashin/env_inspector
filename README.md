# EnvInspector

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'env_inspector'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install env_inspector

## Usage

1. In your Rails app create file `config/initializers/env_ispector.rb`

2. Add ENV list to this file:
    ```ruby
    EnvInspector.configure do |config|
      config.env_list = ['SECRET_KEY', 'DEFAULT_HOST']
    end
    ```
3. Add string `EnvInspector::Inspector.check!` to initializer file

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/olegnikitashin/env_inspector. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
