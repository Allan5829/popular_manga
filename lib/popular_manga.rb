class PopularManga
  attr_accessor :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info I will be scraping

  @@all = []

  def initialize (name, manga_url)
    @name = name
    @manga_url = manga_url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_manga
    url = "https://www.viz.com/read/read/section/46389/more"
    MangaScraper.first_scrape(url)
  end

end
