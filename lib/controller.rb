class Controller

  def start
    puts "Welcome to the Popular Manga CLI!"
    PopularManga.make_manga # create objects based on scraped data for every manga in the @manga array
    menu
  end

  def menu
    puts "Please select the manga you would like to learn more about by typing 1-5."
    PopularManga.all.each_with_index do |manga, index| # lists every manga with a number for the user to easily interact with
      puts "#{index + 1}- #{manga.name}"
    end
    puts ""
    puts "Or type exit to stop using the CLI."

    number = gets.strip
    if number == "exit"
      done_using
    else
      input = number.to_i
      puts ""
      display_info(input)
    end
  end

  def display_info (input) #first level
    total_manga = PopularManga.all.size
    if (input > 0) && (input <= total_manga)
      manga = PopularManga.all[input -1]
      puts "Manga name: #{manga.name}"
      puts "Manga description: #{manga.series_info}"
      puts "Recent manga volume/book: #{manga.recent_volume}"
      puts "Manga artist/author: #{manga.creator}"
      puts "Type anything to continue."
      gets
      display_more_info(input)
    else
      invalid
      puts ""
      menu
    end
  end

  def display_more_info (input) #second level
    manga = PopularManga.all[input -1]
    puts "What would you like to learn more about?"
    puts "Type 1 to learn more about the creator."
    puts "Type 2 to learn more about a recent manga volume/book."
    puts "Type 3 to go back to the menu."
    puts "Type exit to stop using the CLI."
    number = gets.strip
    more_input = number.to_i
    if number == "exit"
      done_using
    elsif more_input == 1
      puts "#{manga.creator_info}"
      puts "Type anything to continue."
      gets
      display_more_info(input)
    elsif more_input == 2
      puts "#{manga.recent_volume_info}"
      puts "Type anything to continue."
      gets
      display_more_info(input)
    elsif more_input == 3
      menu
    else
      invalid
      display_more_info(input)
    end
  end

  def done_using
    puts "Thank you for using this CLI!"
  end

  def invalid
    puts "That was not a valid input."
    puts ""
  end

end
