class MangaScraper

  def self.first_scrape (all_manga_url)
    doc = Nokogiri::HTML(open("https://www.viz.com/read/read/section/46389/more"))

    # creates 1 unique PopularManga object per block of code
    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title| # searches through every manga title
      if title.text == "Fullmetal Alchemist"
        name1 = title.text #sets a new variable to the name
        doc.search("div.g-3.g-3--md.mar-b-lg.g-omega a").each do |div| #searches through every url
          if div.attributes["href"].value.include?("fullmetal-alchemist")
            url_part1 = div.attributes["href"].value #sets a new variable to the url
            url1 = ["https://www.viz.com", "#{url_part1}"].join
            PopularManga.new(name1, url1)  #creates new PopularManga object
            MangaScraper.second_scrape(url1)
          end
        end
      end
    end

    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title| # searches through every manga title
      if title.text == "My Hero Academia"
        name1 = title.text #sets a new variable to the name
        doc.search("div.g-3.g-3--md.mar-b-lg a").each do |div| #searches through every url
          if div.attributes["href"].value.include?("my-hero-academia")
            url_part1 = div.attributes["href"].value #sets a new variable to the url
            url1 = ["https://www.viz.com", "#{url_part1}"].join
            PopularManga.new(name1, url1)  #creates new PopularManga object
          end
        end
      end
    end

    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title| # searches through every manga title
      if title.text == "Naruto"
        name1 = title.text #sets a new variable to the name
        doc.search("div.g-3.g-3--md.mar-b-lg a").each do |div| #searches through every url
          if div.attributes["href"].value.include?("naruto")
            url_part1 = div.attributes["href"].value #sets a new variable to the url
            url1 = ["https://www.viz.com", "#{url_part1}"].join
            PopularManga.new(name1, url1)  #creates new PopularManga object
          end
        end
      end
    end

    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title| # searches through every manga title
      if title.text == "One Piece"
        name1 = title.text #sets a new variable to the name
        doc.search("div.g-3.g-3--md.mar-b-lg.g-omega a").each do |div| #searches through every url
          if div.attributes["href"].value.include?("one-piece")
            url_part1 = div.attributes["href"].value #sets a new variable to the url
            url1 = ["https://www.viz.com", "#{url_part1}"].join
            PopularManga.new(name1, url1)  #creates new PopularManga object
          end
        end
      end
    end

    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title| # searches through every manga title
      if title.text == "One-Punch Man"
        name1 = title.text #sets a new variable to the name
        doc.search("div.g-3.g-3--md.mar-b-lg a").each do |div| #searches through every url
          if div.attributes["href"].value.include?("one-punch-man")
            url_part1 = div.attributes["href"].value #sets a new variable to the url
            url1 = ["https://www.viz.com", "#{url_part1}"].join
            PopularManga.new(name1, url1) #creates new PopularManga object
          end
        end
      end
    end

    # binding.pry
  end

  def self.second_scrape (manga_url) # get and assign the rest of the info needed
    #manga_url is the url specific to the manga that is being scraped
    doc = Nokogiri::HTML(open(manga_url))
    binding.pry
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
