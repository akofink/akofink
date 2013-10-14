Andrewkofink::Application.routes.draw do
  # Resourceful Routes
  resources :blogs
  resources :media
  resources :users

  # Non-resourceful Routes
  match :about, controller: :pages, action: :about, via: :get
  match :albums, controller: :pages, action: :albums, via: :get
  match blog: 'blogs_path', controller: 'blogs', action: 'index', via: :get
  match :contact, controller: :pages, action: :contact, via: :get
  match '/github' => redirect('http://github.com/akofink'), via: :get
  match 'media/index' => 'media#create', via: 'post'
  match :projects, controller: :pages, action: :projects, via: :get

  root to: 'blogs#index'
end
