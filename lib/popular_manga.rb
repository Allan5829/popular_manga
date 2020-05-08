class PopularManga
  attr_accessible :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info I will be scraping
  
  @@all = []
  
  def initialize (name, manga_url)
    @name = name 
    @manga_url = manga_url
    @@all << self 
  end 
end 