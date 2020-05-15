# PopularManga

Welcome to the popular_manga CLI! To find out how to use the CLI for yourself look for ## Installation. This CLI presents the user with the name of x amount of manga, five manga in Version 1.0. The user will see some basic info on the manga selected and then be prompted whether or not to view more information about the manga, go to the menu with the entire list of manga, or quit.

For those of you who don't know, manga is a Japanese version of comic books.

## Installation

To clone this CLI run 'git clone git@github.com:Allan5829/popular_manga.git'.
Before you start the CLI or test at all make sure to run 'bin/setup' so all of the gems install.
You're ready to run 'bin/console' and see what this CLI has to offer!

## Usage

This program was made as a CLI, not a gem. For those interested in customizing the CLI, the url that is scraped in manga_scraper.rb is "https://www.viz.com/read/read/section/46389/more".

To customize the manga used in the CLI, find the @manga array in manga_scraper.rb,line 6 and type the name of the manga you wish to use as it is found on the page the url leads to.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/'Allan5829'/popular_manga. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PopularManga project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/'Allan5829'/popular_manga/blob/master/CODE_OF_CONDUCT.md).
