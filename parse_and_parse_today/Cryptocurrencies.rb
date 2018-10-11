require 'rubygems'
require 'nokogiri'
require 'open-uri'

def  crypto_name
     array_1 = []
     page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
     page.css("td.currency-name").each do |node|
#     doc.xpath('//li/li/a').each do |node|
#        /html/body/div[2]/div/div[1]/div[2]/div[3]/div[2]/div/table/tbody/tr[4]/td[2]/a
         array_1 <<  node["data-sort"]
     end

     array_1
end


def crypto_value
    array_2 = []
    page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
    page.css("a.price").each do |node2|
        array_2 << node2["data-usd"]
    end
    array_2
end

puts Hash[crypto_name.zip(crypto_value)]
