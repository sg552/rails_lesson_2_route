Rails.application.routes.draw do

  match '/auth/:provider/callback', to: 'sessions#create', via: [:get, :post]

  # 根路径
  root :to=>  'books#welcome'

  # 这里会生成七种路由.
  resources :books do
    collection do
      # 在这里生成第八种路由: GET:  /books/list
      get :list
    end
  end

  namespace :interface do
    resources :books do
      collection do
        get :all
      end
    end
  end
end
