Rails.application.routes.draw do
  resources :dishes
  resources :recipes
  resources :ingredients
  get '/dishes/:id/advance_edit', to: 'dishes#advance_edit', as: 'advance_edit_dish'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
