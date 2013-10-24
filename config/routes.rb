Andrewkofink::Application.routes.draw do
  # Resourceful Routes
  resources :blogs
  resources :media
  resources :sessions
  resources :users

  # Non-resourceful Routes
  match :about, controller: :pages, action: :about, via: :get
  match :albums, controller: :pages, action: :albums, via: :get
  match blog: 'blogs_path', controller: 'blogs', action: 'index', via: :get
  # Aliases
  get :contact, controller: :pages, action: :contact
  get '/github' => redirect('http://github.com/akofink')
  get :login, controller: :sessions, action: :new
  get :logout, controller: :sessions, action: :destroy
  get :projects, controller: :pages, action: :projects

  root to: 'blogs#index'
end
