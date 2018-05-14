Rails.application.routes.draw do
  resources :users
  get 'store/index'
  get 'admin' => 'admin#index'
  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy 
  end

  resources :products do
    get :who_bought, on: :member
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  scope '(:locale)' do 
    resources :orders
    resources :line_items
    resources :carts
    # Ex:- scope :active, -> {where(:active => true)}
    root 'store#index', as: 'store', via: :all
  end
end
