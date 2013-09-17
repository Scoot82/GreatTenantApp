GreatTenantApp::Application.routes.draw do
  resources :tenants
  resources :landlords
  root "static_pages#home"
  match '/tenant_signup',     to: 'tenants#new',          via: 'get'
  match '/landlord_signup',   to: 'landlords#new',          via: 'get'
  match '/about',             to: 'static_pages#about',   via: 'get'
  match '/contact',           to: 'static_pages#contact', via: 'get'
end
