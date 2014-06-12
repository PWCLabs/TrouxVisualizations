Rails.application.routes.draw do
  root to: 'welcome#index'

  scope module: 'welcome' do
    get :sunburst
    get :viva
    get :tree
  end

  resources :api, only: [] do
    collection do
      get :level1
      get :level3
    end
  end
end
