Rails.application.routes.draw do
#投稿ページ
  get 'index' =>"posts#index"

#home
  get '/' =>"home#top"

#紹介ページ
  get 'about' =>"home#about"
end
