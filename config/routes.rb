Rails.application.routes.draw do


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

  # 直接指定一个url ， 由哪个controller#action 来处理。
  match '/welcome_you', to: 'books#welcome', via: [:get, :post]
end
