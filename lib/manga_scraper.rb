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
            MangaScraper.second_scrape(name1, url1)
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
            MangaScraper.second_scrape(name1, url1)
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
            MangaScraper.second_scrape(name1, url1)
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
            MangaScraper.second_scrape(name1, url1)
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
            MangaScraper.second_scrape(name1, url1)
          end
        end
      end
    end

  end

  def self.second_scrape (name, manga_url)
    manga_attributes = {}
    doc = Nokogiri::HTML(open(manga_url))
    manga_attributes[:name] = name
    manga_attributes[:creator] = doc.search("span.disp-bl--bm.mar-b-md").text # :creator
    manga_attributes[:creator_info] = doc.search("div.o_bio.g-4--md.g-omega--md.type-sm.type-rg--lg.line-copy.text-spacing").text # :creator_info
    manga_attributes[:series_info] = doc.search("div.g-8--md.mar-b-lg.mar-b-0--md.type-rg.type-md--lg.line-copy.text-spacing").text # :series_info
    manga_attributes[:recent_volume] = doc.search("h4.type-md.type-lg--md.type-xl--lg.weight-bold.line-tight.mar-b-md.mar-b-lg--md").text # :recent_volume
    manga_attributes[:recent_volume_info] = doc.search("div.text-spacing.type-sm.type-rg--md.type-md--lg.line-caption.mar-b-md.mar-b-lg--md").text # :recent_volume_info
    PopularManga.assign_attributes(manga_attributes)
  end

end
