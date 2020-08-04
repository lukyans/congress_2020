Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index", as: :root
  get "/search", to: "search#index"
  get 'search/sort_asc' => 'search#sort_asc'
  get 'search/sort_desc' => 'search#sort_desc'
end
