Rails.application.routes.draw do

  # 这里会生成七种路由.
  resources :books do
    collection do
      # 在这里生成第八种路由: GET:  /books/list
      get :list
    end
  end
end
