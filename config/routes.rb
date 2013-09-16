GreatTenantApp::Application.routes.draw do
  devise_for :tenants
  root to: "static_pages#home"
  get "static_pages/home"
  resources :tenants
end
