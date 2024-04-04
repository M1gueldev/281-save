Rails.application.routes.draw do
  resources :inventarios
  resources :organizacion_beneficas
  resources :cuenta_bancaria
  resources :establecimientos
  resources :responsables
  resources :donacions
  resources :almacens
  resources :solicituds
  resources :economicas
  resources :alimentos
  resources :productos
  resources :voluntarios
  resources :personas
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
