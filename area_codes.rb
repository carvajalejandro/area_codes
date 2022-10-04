dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
# Write code here
  city_names= somehash.keys
  puts city_names
end
 
# Get area code based on given hash and key
def get_area_code(somehash, city)
# Write code here
  area_code = somehash.select{|k, v| k.match(city)}
  code= area_code[city]
  puts "The area code for #{city} is #{code}"
end
 
# Execution flow
loop do
# Write your program execution code here
  puts "Do you want to look up an aread code based on city? (Y/N)"
  answer=gets.chomp.downcase
  if answer != "y"
    return
  else 
    puts "Which city do you want the Area Code?"
    get_city_names(dial_book)
  end
  puts "Enter your selection"
  city=gets.chomp.downcase
  get_area_code(dial_book, city)
end

