Errorbook::Application.routes.draw do

  resources :errors do
    resources :solutions
  end

  put "/errors/:error_id/solutions/" => "solutions#update"
end
