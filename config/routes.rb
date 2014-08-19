Rails.application.routes.draw do

  root to: 'home#index'
  get '/staff' => 'home#staff', as: :staff

end
