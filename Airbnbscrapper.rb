

require 'nokogiri'
require 'open-uri'

# Store URL to be scraped
url = "https://www.airbnb.com/s/Brooklyn--NY--United-States"

# Parse the page with Nokogiri
page = Nokogiri::HTML(open(url))

# Display output onto the screen
puts page
