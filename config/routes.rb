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
end
