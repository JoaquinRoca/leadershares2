Leadershares2::Application.routes.draw do
  root to: 'pages#home'
  resources :videos, only: [:create, :index, :new]

end


