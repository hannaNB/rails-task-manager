Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Lire toutes les taches
    get 'tasks', to: 'tasks#index'
  # Créer une tâche (2 requêtes)
    get 'tasks/new', to: "tasks#new", as: :new
    post 'tasks', to: "tasks#create", as: :create
  # Lire une tâche (le détail)
    get 'tasks/:id', to: "tasks#show", as: :task
  # Updater une tâche
    get 'tasks/:id/edit', to: "tasks#edit", as: :edit
    patch 'tasks/:id', to: "tasks#update", as: :update
  # Supprimer une tâche
    delete "tasks/:id", to: "tasks#destroy", as: :destroy
  # Marque une tâche comme completed
    # get '/done/:id', to: 'tasks#done', as: 'done'

end
