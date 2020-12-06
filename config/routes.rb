Rails.application.routes.draw do
  #投稿フォーム
  get 'todolists/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'top' => 'homes#top'
  #データの送信先
  post 'todolists' => 'todolists#create'
  #一覧画面
  get 'todolists' => 'todolists#index'
  #詳細画面
  get 'todolists/:id' => 'todolists#show', as: 'todolist'
  #編集画面
  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist'
  #編集内容を保存
  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist'
  #削除
  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist'
end
