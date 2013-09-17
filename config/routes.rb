GreatTenantApp::Application.routes.draw do
  get "landlords/new"
  get "tenants/new"
  root to: "static_pages#home"
  get "static_pages/home"
  get "static_pages/test_page"
end
