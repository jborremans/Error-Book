Errorbook::Application.routes.draw do

  root :to => "errors#index"

  resources :errors do
    resources :solutions
  end

end
