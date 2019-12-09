Rails.application.routes.draw do
  #get 'feedback/new'
  #get 'feedback/index'
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  get 'newpage', to: "home#newpage", as: 'newpage'
  #match '/reversestring' => 'home#reversestring', via: :get
  
  resources :surveys

  resources :feedbacks
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
