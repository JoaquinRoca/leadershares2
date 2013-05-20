Leadershares2::Application.routes.draw do
  root to: 'pages#home'
  resources :videos
end
