Rails.application.routes.draw do
  post "users/:id/update" => "users#update"

  get "users/:id/edit" => "users#edit"

  post "users/create" => "users#create"

  get "signup" => "users#new"

  get "users/index" => "users#index"

  get "users/:id" => "users#show"
#投稿ページ
  get 'index' =>"posts#index"
#新規投稿
  get 'posts/new' => "posts#new"
#表示画面
  get 'posts/:id' => "posts#show"

#投稿
  post 'posts/create' => "posts#create"
#home
  get '/' =>"home#top"

#紹介ページ
  get 'about' =>"home#about"
#編集
  get'posts/:id/edit' => "posts#edit"
#更新
  post'posts/:id/update' => "posts#update"

#削除
  post'posts/:id/destroy' => "posts#destroy"

  get "login" => "users#login_form"

  post "login" => "users#login"

  post "logout" => "users#logout"
end
