
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open("http://www.google.com/search?q=doughnuts"))
doc.xpath('//h3[@class = "r"]/a[@class = "l"]').each do |node|
  puts node.text
end
