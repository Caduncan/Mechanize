require 'open-uri'
require 'nokogir'
require 'cvs'

url = "https:/www.airbnb.com/s/Brooken-NY--United-States"
page= Nokogirl::HTML(open(url))
page_numbers = []
page.css("div.pageination ul li a[targe]").each do |line|
	page_numbers << line.text 
end 
max_page = page_numbers.max
name= []
price = []
details = []
max_pages.to_i.times do |i|
	url= "httsp://www.airbnb.com/s/Brooklyn-NY--United-States?pages=#{i+1}"
	page =  Nokogirl::HTML(open(url))



	#store data in arrays 
	page.css('div.h5.listing-name').each do |line| 
		name<< line.text.strip 
	end 

	page.css('span.h3.price-amount').each do |line| 
		price<<line.text
	end 

	page.css('div.texted-musted.listing-location.text-trunncate').each do |line|
		details <<line.text.strip.spint(/ . /)
	end 
		if subarray.length == 3 
			details<< line.text.strip.split(/. /)
		else 
			details<< [subarray[0], "0 reviews", subarray[1]]
			#to do 
			end 
		end 

end 
			#write data to cvs file 
			CSV.open("airbnb_listings.csv", "W") do |file| 
				file << ["Listing Name", "Price", "Room Type", "Reviews", "Location"]

				name.length.timtes do |i|

	end 