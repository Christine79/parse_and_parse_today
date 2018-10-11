
require 'rubygems'
require 'nokogiri'
require 'open-uri'

page = Nokogiri.XML('<foo><bar /></foo>', nil, 'EUC-JP')
puts page.class   # => Nokogiri::HTML::Document
