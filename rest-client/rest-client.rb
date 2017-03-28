require 'rest-client'

def google_it
    puts "Enter what you like to search"
    search = gets.chomp.gsub!(/\s/, "%20")
    
    url = "https://www.google.com/#q=#{search}"
    response = RestClient.get url
    
    display_info(response)
end

def display_info(response)
    puts "HEADERS"
    puts "--------------"
    puts "Date: #{response.headers[:date]}"
    puts "Status code: #{response.code}"
    puts
    
    puts "BODY"
    puts "--------------"
    puts response.body
end

google_it


