require 'nokogiri'
require 'open-uri'
require 'pry'

puts "Welcome to"


html = URI.open("https://flatironschool.com/")

doc = Nokogiri::HTML(html)

newdoc = doc.css(".list-item")

newdoc.each do|d|
    puts d.text.strip
end


# binding.pry
# pp doc
