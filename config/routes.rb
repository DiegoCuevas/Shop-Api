Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :categories
  resources :products
  get 'search', to: 'products#search'
  get 'order_by_category', to: 'products#filter_by_category'
end
