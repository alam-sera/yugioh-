
require 'open-uri'


response = HTTP.get("https://db.ygoprodeck.com/api/v7/cardinfo.php")
card = response.parse(:json)

x = 12347 
while x < card["data"].length
  sleep 30
  card_id = card["data"][x]["id"]
  download = URI.open("https://images.ygoprodeck.com/images/cards/#{card_id}.jpg")
  IO.copy_stream(download, "public/#{card_id}.jpg")    
  x -= 1 
end 
