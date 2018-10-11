
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage
  doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
#  //h3[@class = "r"]/a[@class = "l"]
  doc.xpath(//body[@class = "txt-primary tr-last"]/td[@class = "txt_primary"]).each do |node|
    puts node.text
  end
end
