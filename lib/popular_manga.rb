class PopularManga
  attr_accessor :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info to be displayed

  @@all = []

  def initialize (scraped_info)
    scraped_info.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_manga # starts the scraping chain of methods
    # first this method sends the url to the MangaScraper class
    # second MangaScraper.first_scrape(url) scrapes the url to get a name and specific url for that name
    # third MangaScraper.second_scrape(name, url) uses the url specific to the name o scrape the ramaining info needed
    # fourth PopularManga.assign_attributes(manga_attributes) recieves a hash that will be used to instantiate a new PopularManga object
    # fifth PopularManga.new creates a new object and finds the respective setter method per key and sets the value for that object
    url = "https://www.viz.com/read/read/section/46389/more"
    MangaScraper.first_scrape(url)
  end

  def self.assign_attributes(second_scrape)
    PopularManga.new(second_scrape)
  end

end
