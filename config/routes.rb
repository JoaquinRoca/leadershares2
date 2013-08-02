Leadershares2::Application.routes.draw do
  resources :assessments

  resources :competencies

  resources :users


  root to: 'pages#home'
  resources :videos, only: [:create, :destroy, :edit, :index, :new, :show, :update]
  resources :users, only: [:create, :destroy, :edit, :index, :new, :show, :update] 

  # A note on routes:
  # index allows you to display a list of items
  # new is the form for adding a new element
  # create is the controller method that takes the new form submission and saves the new record to the db
  # edit is the form for editing an element
  # update is the controller method that takes the update form submission and saves the record to the db
  # destroy is the action for deleting an element
  # show is the detail view for the element

end


