Rails.application.routes.draw do
  get 'grass/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'

  get 'todolists/new'
  post 'todolists' => 'todolists#create'
  get 'todolists' => 'todolists#index', as:'index_todolist'
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  get 'todolists/:id/edit' => 'todolists#edit', as:'edit_todolist'
  patch 'todolists/:id' => 'todolists#update', as:'update_todolist'
  delete 'todolists/:id' => 'todolists#destroy', as:'destroy_todolist'

  get 'game/new'
  post 'game' => 'game#create'
  get 'game' => 'game#index'
  get 'game/:id' => 'game#show', as:'show_game'
  get 'game/:id/edit' => 'game#edit', as:'edit_gme'
  patch 'game/:id' => 'game#update'
  delete 'game/:id' => 'game#destroy', as:'destroy_game'

  get 'grass/new'
  post 'grass' => 'grass#create'
  get 'grass' => 'grass#index'
  get 'grass/:id' => 'grass#show', as:'show_grass'
  get 'grass/:id/edit' => 'grass#edit', as:'edit_grass'
  patch 'grass/:id' => 'grass#update'
end
