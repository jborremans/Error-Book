Errorbook::Application.routes.draw do

  resources :topics

  root :to => "errors#index"

  resources :errors do
    resources :solutions
  end

end
