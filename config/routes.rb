Andrewkofink::Application.routes.draw do
  match :about, controller: :pages, action: :about, via: :get
  match :projects, controller: :pages, action: :projects, via: :get
  match :albums, controller: :pages, action: :albums, via: :get
  match :contact, controller: :pages, action: :contact, via: :get

  resources :media

  match 'media/index' => 'media#create', via: 'post'

  match '/github' => redirect('http://github.com/akofink'), via: :get

  resources :blogs

  match blog: 'blogs_path', controller: 'blogs', action: 'index', via: :get

  root to: 'blogs#index'
end
