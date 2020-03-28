Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  root to: "jenres#index"
  resources :posts, only: [:destroy]
  resources :jenres, only: [:index, :show] do
    resources :posts, only: [:index, :show, :create, :edit, :update, :new] 
  end

end


