
require 'rubygems'
require 'nokogiri'
require 'open-uri'


def get_the_email_of_a_townhal_from_its_webpage
  doc = Nokogiri::HTML(open("http://annuaire-des-mairies.com/95/vaureal.html"))
#  //h3[@class = "r"]/a[@class = "l"]
#doc.xpath('//h3[@class = "r"]/a[@class = "l"]').each do |node|
#    doc.xpath(//main//section//tbody[@class = "txt-primary"]/td).each do |node|
#      doc.xpath(//head/titre[@class = "txt-primary"]/td).each do |node|
        a = doc.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]')
        puts a.text

end

puts get_the_email_of_a_townhal_from_its_webpage
