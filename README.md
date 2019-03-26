# Rur - Rubocop reports by HTML

Rur gem will produce Rubocop results by `HTML` format.
It uses
- [Rubocop](https://github.com/rubocop-hq/rubocop) gem exports `HTML` format.
- [High_voltage](https://github.com/thoughtbot/high_voltage) gem links `HTML` results in your app (`static pages`)

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

create  config/initializers/high_voltage.rb
create  app/views/rur/home.html.erb
insert  config/routes.rb
append  .gitignore
```

### 2. Produce views

  2.1 For your app

      $ rake rur:produce

  2.2 For specify folder(s) you want

      $ rake rur:produce controllers models views lib

### 3. View results:

  Go to [http://localhost:3000/rur](http://localhost:3000/rur) to see results.

## Testing
*TODO*

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nguyentamphu/rur. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

*updating...*
