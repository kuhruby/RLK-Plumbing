Rails.application.routes.draw do

  devise_for :admins
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root to: 'home#index'
  get '/staff' => 'home#staff', as: :staff
  get '/contacts' => 'contacts#new', as: :contacts
  resources "contacts", only: [:new, :create]
  post "invoice" => "invoice#create", as: :invoice
  get "invoice/:token" => "invoice#show", as: :invoice_show
  resources :payments

end
