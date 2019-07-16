Rails.application.routes.draw do
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end

  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  get 'users/new'



  # posts stuff
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
  get  'static_pages/aboutUs'
  get  'static_pages/contactUs'
  get 'home', to: 'welcome#home', as: 'home'


end
