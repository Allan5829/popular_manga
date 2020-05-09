class Controller
  
  def start
    puts "Welcome to the Popular Manga CLI!"
    menu
  end 
  
  def menu
    MangaScraper.fake_scrape 
    # call on a method name TBD to start scraping and get all objects needed in the PopularManga class 
    puts "Please select the manga you would like to learn more about by typing 1-5"
    # call PopularManga.all to get info on all series then display alphabetically 
    puts "1- One Piece" # if one piece is selected then call display_info on a name (one piece)
    puts "2- Naruto"
    puts "3- Fullmetal Alchemist"
    puts "4- My Hero Academia"
    puts "5- One Punch Man"
    
    input = gets 
    if (input == 1) 
      puts "2"
    end 
    display_info(input)
    
  end 
  
  def display_info (input) # what I'm thinking about is how will the name get the data 
    PopularManga.all.each do |series| # i know I'll be asking for an input I need to see how I'll change from name to number later 
      if input == "" #I need a number to lead to a series, I can hard code so 1 = one piece, 2 = naruto etc but that relies on being hard coded I'll do this for now 
        puts "#{series.creator}, #{series.creator_info}"
        puts "the condition passed"
      end 
      puts "end of method"
      
    end 
  
    
  end 
  
end #what I'm going to do now is implement what I want my cli to show but "fake" the data for now 