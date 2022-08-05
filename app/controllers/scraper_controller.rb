class ScraperController < ApplicationController
  def index
    site = "https://www.bbc.co.uk/"
    allowed_site = 'bbc.co'
    page = Nokogiri::HTML(URI.open(site))
    links = page.xpath('//a')
    @links = links.map{ |element| element["href"] if element["href"].include? allowed_site}.compact
  end
end
