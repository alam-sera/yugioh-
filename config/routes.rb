Rails.application.routes.draw do
  get "/cards" => "cards#index"
  get "/cards/search" => "cards#show"





  get "cards/#{card_id}.jpg" => "cards#"
end
