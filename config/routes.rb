Rails.application.routes.draw do
  #get "posts/index"
  resources :posts
  namespace :content do
    get 'fuji'
  end
  #get '/content/fuji', to: 'content#fuji'
  #get "/" => "home#top" 3
  root :to => "home#top"
  get "/about" => "home#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
