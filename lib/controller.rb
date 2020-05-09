class Controller
  
  def start
    puts "Welcome to the Popular Manga CLI!"
    MangaScraper.fake_scrape # call on a method name TBD to start scraping and get all objects needed in the PopularManga class 
    menu
  end 
  
  def menu
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
    total_manga = PopularManga.all.size
    if (input > 0) && (input <= total_manga)
      manga = PopularManga.all[input -1]
      puts "#{manga.creator}, #{manga.creator_info}"
      display_more_info(input)
    else 
      invalid
    end 
  end 
  
  def display_more_info (input)
    manga = PopularManga.all[input -1]
    puts ""
    puts "What would you like to learn more about?"
    puts "Type 1 to learn more about the creator, type 2 to learn more about a recent volume, or type 0 to go back to the menu."
    puts ""
    number = gets.strip
    more_input = number.to_i
    if more_input == 0 
      menu 
    elsif more_input == 1 
      puts "#{manga.creator_info} input is 1"
    elsif more_input == 2 
      puts "#{manga.creator_info} input is 2"
    else 
      invalid
    end 
  end 
  
  def invalid
    puts "That was not a valid input"
  end 
  
end #what I'm going to do now is implement what I want my cli to show but "fake" the data for now 