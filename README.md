[![Build Status](https://travis-ci.org/tomkr/url_builder.svg?branch=master)](https://travis-ci.org/tomkr/url_builder)

# UrlBuilder

UrlBuilder is a tool that makes it real simple to make urls with different paths
and query params to the same host (optionally with a path already in place).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'url_builder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install url_builder

## Usage

Set a base url to later expand. It defaults to an https scheme if none is provided.

    url = UrlBuilder.new('example.com')

Now you can expand it with a path and/or a query string.

    url.expand('/path') # https://example.com/path
    url.expand('other_path', q: a, r: b) # https://example.com/other_path?q=a&r=b

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tomkr/url_builder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
