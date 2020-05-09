class PopularManga
  attr_accessor :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info I will be scraping
  
  @@all = []
  # url = "https://www.viz.com/read/read/section/46389/more"
  
  def initialize (name, manga_url)
    @name = name 
    @manga_url = manga_url
    @@all << self 
  end
  
  def self.all 
    puts @@all 
  end 
  
  def make_manga
    MangaScraper.first_scrape (url)
    MangaScraper.second_scrape (@manga_url)
  end 
  
end 