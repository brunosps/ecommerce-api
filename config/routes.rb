Rails.application.routes.draw do
  mount_devise_token_auth_for "User", at: "auth/v1/user"

  namespace :admin do
    namespace :v1 do
      get "status" => "status#index"
      resources :categories
      resources :system_requirements
    end
  end

  namespace :storefront do
    namespace :v1 do
    end
  end
end
