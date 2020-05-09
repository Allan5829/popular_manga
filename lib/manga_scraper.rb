class MangaScraper
  
  def self.first_scrape (all_manga_url) # create new PopularManga object, get the manga name and manga url and assign them
    # all_manga_url is the url where every manga can be found by name and url 
  end
  
  def self.second_scrape (manga_url) # get and assign the rest of the info needed
    #manga_url is the url specific to the manga that is being scraped
  end 
  
  def self.fake_scrape
    series = PopularManga.new("One Piece", "https/one_piece")
    series.creator = "Echiro Oda"
    series.creator_info = "he writes and draws one piece"
    # puts "#{series.creator}, #{series.creator_info}"
  end 
  
end 