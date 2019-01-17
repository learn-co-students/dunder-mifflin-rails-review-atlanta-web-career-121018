Rails.application.routes.draw do
  get '/dogs/ordered', to: 'dogs#ordered', as: 'ordered_dogs'
  resources :dogs, only: [:index, :show]
  resources :employees, except: :destroy
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
