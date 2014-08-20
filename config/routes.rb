Rails.application.routes.draw do

  root to: 'home#index'
  get '/staff' => 'home#staff', as: :staff
  get '/contacts' => 'contacts#new', as: :contacts
  resources "contacts", only: [:new, :create]

end
