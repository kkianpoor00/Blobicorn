Rails.application.routes.draw do
  get 'users/new'
  # get 'posts_pages/form'
  # get 'posts_pages/edit'
  get 'posts/index'
  get 'index', to: 'posts#index', as: 'index'
  resources:posts
  # get 'posts_pages/new'
  # get 'posts_pages/show'

  get 'static_pages/home'
  get 'static_pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "welcome#index"
  # root 'main#index'
  root 'static_pages#home'
  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  get 'home', to: 'welcome#home', as: 'home'


end
