class PopularManga
  attr_accessor :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info I will be scraping

  @@all = []

  def initialize (scraped_info)
    scraped_info.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_manga
    url = "https://www.viz.com/read/read/section/46389/more"
    MangaScraper.first_scrape(url)
  end

  def self.assign_attributes(second_scrape)
    PopularManga.new(second_scrape)
  end

end
