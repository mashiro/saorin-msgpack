# Saorin::Msgpack

msgpack formatter for saorin

## Installation

Add this line to your application's Gemfile:

    gem 'saorin-msgpack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install saorin-msgpack

## Usage

### Server

```ruby
Saorin::Server.start Handler.new, :host => '0.0.0.0', :port => 8080, :formatter => MessagePack
```

### Client

```ruby
Saorin::Cleint.new :url => 'http://localhost:8080', :formatter => MessagePack
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
