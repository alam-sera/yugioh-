class CardsController < ApplicationController
  def index
    response = HTTP.get("https://db.ygoprodeck.com/api/v7/cardinfo.php")
    @card = response.parse(:json)
    render "index"
  end

  def show 
    response = HTTP.get("https://db.ygoprodeck.com/api/v7/cardinfo.php?name=#{params[:name]}")
    p @card = response.parse(:json)
  end

  
end
