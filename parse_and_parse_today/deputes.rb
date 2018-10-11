require 'rubygems'
require 'nokogiri'
require 'open-uri'

def  name
     array_1 = []
     page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
     page.path("//*[@id="deputes-list"]/div[1]/ul[1]/li[1]/").each do |node|
#     doc.xpath('//li/li/a').each do |node|
#        /html/body/div[2]/div/div[1]/div[2]/div[3]/div[2]/div/table/tbody/tr[4]/td[2]/a
         array_1 <<  node["div"]
     end

     array_1
end

puts name

def firstname
    array_2 = []
    page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
    page.path("//*[@id="deputes-list"]/div[1]/ul[1]/li[1]/").each do |node2|
        array_2 << node2["href"]
    end
    array_2
end
puts firstname

  def mail
      array_3 = []
      page = Nokogiri::HTML(open("http://www2.assemblee-nationale.fr/deputes/liste/alphabetique"))
      page.path("//*[@id="deputes-list"]/div[1]/ul[1]/li[1]/").each do |node3|
          array_3 << node3["div"]
      end
      array_3
  end

puts mail
