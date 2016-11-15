# StudentExplorer

Gem para manipulação de estudantes oriundos de um arquivo CSV.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'student_explorer'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install student_explorer

## Usage

StudentExplorer.find_by_name('students.csv', 'Enrico Pedro Henrique Moura')

StudentExplorer.find_by_email('students.csv', 'enrico-pedro79@randstad.com.br')

StudentExplorer.find_by_cpf('students.csv', '347.651.835-30')

StudentExplorer.find_by_rg('students.csv', '31.393.753-9')

StudentExplorer.find_by_phone('students.csv', '(61) 9845-0738')

StudentExplorer.find_by_coefficient('students.csv', '60')

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/student_explorer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
