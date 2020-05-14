class PopularManga
  attr_accessor :name, :manga_url, :creator, :creator_info, :series_info, :recent_volume, :recent_volume_info #info I will be scraping

  @@all = []
  # url = "https://www.viz.com/read/read/section/46389/more"

  def initialize (name, manga_url)
    @name = name
    @manga_url = manga_url
    @@all << self
  end

  def self.all
    @@all
  end

  def self.make_manga
    doc = Nokogiri::HTML(open("https://www.viz.com/read/read/section/46389/more"))
    #binding.pry
    # all manga names = doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").text

    # div.attributes["href"].value
    #MangaScraper.first_scrape (url)
    #MangaScraper.second_scrape (@manga_url)
    doc.search("div.g-3.g-3--md.mar-b-lg.g-omega a").each do |div|
      # binding.pry
    end

    doc.search("div.pad-x-rg.pad-y-md.type-sm.type-rg--sm.type-md--lg.type-center.line-tight").each do |title|
      if title.text == "Fullmetal Alchemist"
        name1 = title.text
        doc.search("div.g-3.g-3--md.mar-b-lg.g-omega a").each do |div|
          if div.attributes["href"].value.include?("fullmetal-alchemist")
            url_part1 = div.attributes["href"].value
            url1 = ["viz.com", "#{url_part1}"].join
            binding.pry
          end
        end
      end
    end






  end

end
