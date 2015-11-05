Rails.application.routes.draw do

  scope path: '/blog' do
    get '/', to: 'blog_posts#index'
    resources :blog_posts, path: 'posts'
  end

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
end
