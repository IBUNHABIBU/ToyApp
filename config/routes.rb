Rails.application.routes.draw do
  get 'welcome/index'

  get 'demo/index'

  resources :articles do
     member do 
       get :delete
       delete :delete, action: :destroy
     end
  end
     


  root 'articles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
