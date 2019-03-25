# Rur - Rubocop reports

Rur gem will produce Rubocop results by `html` format.
It uses
- [Rubocop gem](https://github.com/rubocop-hq/rubocop) to outputs `html` format.
- [High_voltage](https://github.com/thoughtbot/high_voltage) to links `html` result in your app (`static page`)

## Installation

Add this line to your application's Gemfile:

```ruby
...
group :development do
  gem 'rur'
end
...
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install rur

## Usage

### 1. Init `Rur`

    $ rails generate rur

  It generates some necessary files
```bash
$ rails g rur

create    config/initializers/high_voltage.rb
create    app/views/rur/home.html.erb
 route    scope :rur do
            # Rur for all folders
            get '/' => 'high_voltage/pages#show', id: 'home'
            end
append    .gitignore
```

### 2. Produce views

  2.1 For your app

      $ rake rur:produce

  2.1 For specify folder(r) you want

      $ rake rur:produce controllers models views lib

## Testing
  TODO

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nguyentamphu/rur. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

*updating...*
