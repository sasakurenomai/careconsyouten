Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  
  root to: "jenres#index"
  
  resources :jenres, only: [:index, :show] do
    resources :posts do
      resources :likes, only:[:create, :destroy]
    end
    resources :urinals, except:[:index]
  end

end


