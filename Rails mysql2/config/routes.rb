Rails.application.routes.draw do

  root 'first_page#index'

  resources :users do
    member do
      get :delete
    end
  end


  resources :posts do
    member do
      get :delete
    end
  end

  get 'admin', :to => 'login#inside'
  get 'login/login_user'
  post 'login/attempt_login'
  get 'login/logout'

  get 'first_page/index'
  get 'first_page/contactUs'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
