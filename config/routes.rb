Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'tictactoe#home_page'

  get '/profil', to: 'tictactoe#profil'

  get '/game/:id', to: 'tictactoe#game'

end
