Rails.application.routes.draw do
  devise_for :users, :path_names => { sign_in: 'login', sign_out: 'logout' }

  root 'products#index'

  resources :products do
    resources :reviews
  end

end
