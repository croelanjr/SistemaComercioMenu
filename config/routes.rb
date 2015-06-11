Rails.application.routes.draw do

  devise_for :users, controllers: {sessions: "users/sessions", registrations: "users/registrations"}
  devise_for :admis, controllers: {sessions: "admis/sessions", registrations: "admis/registrations"}

  devise_for :usuarios, controllers: {usuarios: 'usuarios'}

  #get 'home/index'
  root to: 'home#index'
  
  #get 'home/menus', to: 'vista_pedido#new'

  #post 'home/menus', to: 'vista_pedido#new'

  get 'home/menus', to: 'vista_pedido#index'

  #post 'home/menus', to: 'vista_pedido#nuevo'

  get 'home/promociones'

  get 'home/locales'

  #get 'home/contactenos', to: 'correos#new'

  get 'home/contactenos'

  post 'home/contactenos'

  get 'home/about'
  
  get 'admin', to: 'admini#index' 

  get 'admini/menus'

  get 'admini/clientes', to: 'clientes#index'

  get 'admini/administradores', to: 'usuarios#index'

  get 'admini/pedidos'

  get 'admini/comidas_semanales'

  get 'admini/locales', to: 'locals#index'

  resources :clientes

  resources :menus

  resources :usuarios

  resources :comidas

  resources :promocions

  resources :locals

  resources :correos

  resources :empresas

  resources :pedidos

  resources :vista_pedido

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #root 'application#hello'
  #root 'admin#index'
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
