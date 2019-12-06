Rails.application.routes.draw do
  #get 'feedback/new'
  #get 'feedback/index'
  root :to => 'home#index'
  mount ShopifyApp::Engine, at: '/'
  get 'newpage', to: "home#newpage", as: 'newpage'
  match '/reversestring' => 'home#reversestring', via: :get
  
  resources :surveys do
    resources :questions  
  end

  resources :feedback

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
