Errorbook::Application.routes.draw do

  resources :errors do
    resources :solutions
  end


end
