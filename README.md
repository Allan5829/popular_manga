# PopularManga

Welcome to the popular_manga CLI! This CLI presents the user with the name of x amount of manga, five manga in Version 1.0. The user will see some basic info on the manga selected and then be prompted whether or not to view more information about the manga, go to the menu with the entire list of manga, or quit.

For those of you who don't know, manga is a Japanese version of comic books.

## Installation

To install clone the repository and download all of the necessary gems through bin/setup.

'git clone git@github.com:Allan5829/popular_manga.git'

'bin/setup'

## Usage

Once you have cloned and set up the CLI, you are ready to use it!

'bin/popular-manga'

For those who would like to customize the CLI with different manga/series, find the lib/manga_scraper.rb file and find the @manga array at line 6.
To add another manga, simply add another string to the array in the formatting as it appears on the url that is scraped. "https://www.viz.com/read/read/section/46389/more"
If the manga has symbols in the name that aren't accounted for, it will likely cause an error.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'Allan5829'/popular_manga. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PopularManga project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'Allan5829'/popular_manga/blob/master/CODE_OF_CONDUCT.md).
