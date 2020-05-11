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

    series2 = PopularManga.new("Naruto", "https/naruto")
    series2.creator = "Kishimoto"
    series2.creator_info = "he writes and draws naruto"
    
    series3 = PopularManga.new("Fullmetal Alchemist", "https/naruto")
    series3.creator = "idk the creator"
    series3.creator_info = "he writes and draws fma"
    
    series4 = PopularManga.new("My Hero Academia", "https/naruto")
    series4.creator = "Hirokoshi"
    series4.creator_info = "he writes and draws mha"
    
    series5 = PopularManga.new("One Punch Man", "https/naruto")
    series5.creator = "Murata and ONE"
    series5.creator_info = "I know this series has an author and artist"
  end 
  
  def self.pry_scraping
  end 
  
end 