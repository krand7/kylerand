Rails.application.routes.draw do

  scope path: '/blog' do
    get '/', to: 'blog_posts#index'
    resources :blog_posts, path: 'posts'
  end

  root to: 'visitors#index'
  get 'resume', to: 'visitors#resume'
  get 'connect', to: 'visitors#connect'
  get 'writing-corner', to: 'visitors#writing'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  resources :users
end
