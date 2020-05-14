class Controller

  def start
    puts "Welcome to the Popular Manga CLI!"
    PopularManga.make_manga
    menu
  end

  def menu
    puts "Please select the manga you would like to learn more about by typing 1-5."
    puts "Type exit to stop using the CLI."
    puts ""
    # call PopularManga.all and  display alphabetically
    PopularManga.all.each_with_index do |manga, index|
      puts "#{index + 1}- #{manga.name}"
    end

    number = gets.strip
    if number == "exit"
      done_using
    else
      input = number.to_i
      puts ""
      display_info(input)
    end
  end

  def display_info (input)
    total_manga = PopularManga.all.size
    if (input > 0) && (input <= total_manga)
      manga = PopularManga.all[input -1]
      puts "#{manga.creator}, #{manga.creator_info}"
      display_more_info(input)
    else
      invalid
      puts ""
      menu
    end
  end

  def display_more_info (input)
    manga = PopularManga.all[input -1]
    puts ""
    puts "What would you like to learn more about?"
    puts "Type 1 to learn more about the creator."
    puts "Type 2 to learn more about a recent volume."
    puts ""
    puts "Type 3 to go back to the menu."
    puts "Type exit to stop using the CLI."
    puts ""
    number = gets.strip
    more_input = number.to_i
    if number == "exit"
      done_using
    elsif more_input == 1
      puts "#{manga.creator_info} input is 1"
      puts ""
      display_more_info(input)
    elsif more_input == 2
      puts "#{manga.creator_info} input is 2"
      puts ""
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
  end

end