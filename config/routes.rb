Rails.application.routes.draw do
  # get 'pages/home' for http://localhost:3000
  root 'pages#home'
  # get 'pages/help' for /help
  match '/help',    to: 'pages#help',     via: 'get'
  # get 'pages/contact' for /contact
  match '/contact', to: 'pages#contact',  via: 'get'
  # get 'pages/about' for /about
  match '/about',   to: 'pages#about',    via: 'get'
  # get 'users/new' for /signup
  match '/signup',  to: 'users#new',   via: 'get'
  # get 'sessions/new' for /signin
  match '/signin',  to: 'sessions#new',         via: 'get'
  # get 'sessions/destroy' for /signout
  match '/signout', to: 'sessions#destroy',     via: 'delete'

  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
