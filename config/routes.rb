Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :articles
  resources :notions
  resources :comments
  post "comment/new/:id" => "comment#create", as: :create_comment

  get 'pages/home'
  get 'pages/choice'
  get 'pages/ensavoirplus'

  get 'map' => "application#showMap", as: :map_show

  get 'log/:id' => "logs#show", as: :log

  get 'home/choice'
  get 'home/choise/notions'
  root :to => "pages#home"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
