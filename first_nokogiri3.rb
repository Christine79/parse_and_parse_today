require 'rubygems'
#require 'open-uri'
require 'nokogiri'

	doc = Nokogiri::HTML(open("//home/christine/20181011_thp/index.html"))
	doc.xpath('//h3/a').each do |node|
		puts node.text
	end
