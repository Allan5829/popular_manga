class Controller
  
  def start
    puts "Welcome to the Popular Manga CLI!"
    menu
  end 
  
  def menu
    # call on a method name TBD to start scraping and get all objects needed in the PopularManga class 
    puts "Please select the manga you would like to learn more about by typing 1-5"
    # call PopularManga.all to get info on all series then display alphabetically 
    puts "1- One Piece" # if one piece is selected then call display_info on a name (one piece)
    puts "2- Naruto"
    puts "3- Fullmetal Alchemist"
    puts "4- My Hero Academia"
    puts "5- One Punch Man"
  end 
  
  def display_info (name)
  end 
  
end 

Controller.new.start