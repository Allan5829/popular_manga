class Controller
  
  def start
    puts "Welcome to the Popular Manga CLI!"
    menu
  end 
  
  def menu
    puts "Please select the manga you would like to learn more about by typing 1-5"
  end 
  
end 

Controller.new.start