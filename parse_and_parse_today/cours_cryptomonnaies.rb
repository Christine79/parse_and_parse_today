require 'rubygems'
require 'nokogiri'
require 'open-uri'

def get_cours_crypto
     doc = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
     doc.xpath('/html/body/div/table/tbody/tr/').each do |node|
#        /html/body/div[2]/div/div[1]/div[2]/div[3]/div[2]/div/table/tbody/tr[4]/td[2]/a
         puts node.text
     end
     return node
end

p get_cours_crypto
