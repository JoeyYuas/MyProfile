Rails.application.routes.draw do
  root "pages#profile"
  get 'posts/contact'
  get "/" => "pages#profile"
  get "art" => "pages#art"

  post "like" => "posts#like"
  post "dislike" => "posts#dislike"

  get 'study/ajax'
  get "study/push" => "study#push"
  get "study/pushed" => "study#pushed"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
