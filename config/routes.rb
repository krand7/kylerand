Rails.application.routes.draw do

  scope path: '/blog' do
    get '/', to: 'blog_posts#index'
    resources :blog_posts, path: 'posts'
  end

  root to: 'visitors#index'
  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
end
