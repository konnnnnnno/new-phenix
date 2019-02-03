Rails.application.routes.draw do
#投稿ページ
  get 'index' =>"posts#index"
  get 'posts/new' => "posts#new"
  get 'posts/:id' => "posts#show"

  post "posts/create" => "posts#create"
#home
  get '/' =>"home#top"

#紹介ページ
  get 'about' =>"home#about"
end
