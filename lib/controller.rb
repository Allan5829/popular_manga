class Controller
  
  def start
    puts "Welcome to the Popular Manga CLI!"
    menu
  end 
  
  def menu
    MangaScraper.fake_scrape # call on a method name TBD to start scraping and get all objects needed in the PopularManga class 
    puts "Please select the manga you would like to learn more about by typing 1-5"
    # call PopularManga.all and  display alphabetically 
    PopularManga.all.each_with_index do |manga, index|
      puts "#{index + 1}- #{manga.name}"
    end 
    
    number = gets.strip
    input = number.to_i
    display_info(input)
    
  end 
  
  def display_info (input)
    manga = PopularManga.all[input -1]
    puts "#{manga.creator}, #{manga.creator_info}"
  end 
end #what I'm going to do now is implement what I want my cli to show but "fake" the data for now 