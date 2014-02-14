Andrewkofink::Application.routes.draw do

  # Resourceful Routes
  resources :blogs
  resources :media
  resources :projects
  resources :sessions
  resources :users

  # Non-resourceful Routes
  match :about, controller: :pages, action: :about, via: :get
  match :albums, controller: :pages, action: :albums, via: :get
  match blog: 'blogs_path', controller: 'blogs', action: 'index', via: :get
  # Aliases
  get :calendar, controller: :pages, action: :calendar
  get :contact, controller: :pages, action: :contact
  get '/github' => redirect('http://github.com/akofink')
  get :login, controller: :sessions, action: :new
  get :logout, controller: :sessions, action: :destroy

  root to: 'blogs#index'
end
