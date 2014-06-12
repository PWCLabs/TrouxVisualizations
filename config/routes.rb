Rails.application.routes.draw do
  root to: 'welcome#index'

  scope module: 'welcome' do
    get :sunburst
    get :viva
    get :tree
  end
end
