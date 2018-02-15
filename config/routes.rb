Rails.application.routes.draw do
root 'movies#home'

get '/posts', to: 'movies#search'

end
