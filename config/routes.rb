Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index", as: :root
  get "/search", to: "search#index"
  get 'home/sort_asc' => 'home#sort_asc'
  get 'home/sort_desc' => 'home#sort_desc'
end
