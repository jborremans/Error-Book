Errorbook::Application.routes.draw do



  get   '/login', :to => 'sessions#new', :as => :login
  match '/auth/:provider/callback', :to => 'sessions#create'
  match '/auth/failure', :to => 'sessions#failure'
  get '/logout', :to => 'sessions#destroy'
  

  resources :topics

  root :to => "errors#index"

  resources :errors do
    resources :solutions
  end

end
