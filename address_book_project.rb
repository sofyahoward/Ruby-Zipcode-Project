# Create a dictionary with 10 city names, as keys (in a string format) and zip codes, as values
# Get input from the user on which city they want to look up a zip code of 
# Display the cities which are available to look up zip codes of
# Display the zip code for the city of user's choice
# Keep the program running until the user chooses anything but a "Y" (meaning a "N", or any other letter)

dial_book = {
    "newyork" => "132342",
    "sanfrancisco" => "217368",
    "atlanta" => "362109",
    "minneapolis" => "283719",
    "sandiego" => "803210",
    "charlotte" => "127892",
    "dallas" => "290233",
    "houston" => "908322",
    "seattle" => "938467",
    "miami" => "456732"
}

def get_city_names(somehash)
    somehash.each {|k, v| puts k}
end   

loop do 
    puts "Do you want to look up city names? (Y/N)"
    answer = gets.chomp
    if answer != "Y"
        break
    end  

    puts "Which city would you like to look up a zip code for?"
    get_city_names(dial_book)
    puts "Please enter your selection"
    prompt = gets.chomp
        
    if dial_book.include? (prompt)
        puts "the zip code for #{prompt} is #{dial_book[prompt]}"
    else 
        puts "the city you have entered is not in the system"
    end
end
