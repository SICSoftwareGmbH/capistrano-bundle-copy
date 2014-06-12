# Capistrano::Bundle::Copy

Package gems and upload them instead of running 'bundle install' on the server.

## Setup

Add the library to your `Gemfile`:

```ruby
group :development do
  gem 'capistrano-bundle-copy', require: false
end
```

And load it in your `Capfile`:

```ruby
require 'capistrano/bundle/copy'
```

## Configuration

You can modify any of the following Capistrano variables in your deploy.rb config.

- `bundle_cache_path` - Set the path where the bundle cache is kept.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
