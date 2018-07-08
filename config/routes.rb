Rails.application.routes.draw do
  get 'comments/create'
  root controller: :articles, action: :index
  resources :articles, only: [:new, :create, :show] do
    resources :comments
  end
end
