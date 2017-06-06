Rails.application.routes.draw do
  resources :child_picks
  resources :children
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'children#index'
end
