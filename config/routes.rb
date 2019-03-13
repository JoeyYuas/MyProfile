Rails.application.routes.draw do
  get "/" => "pages#profile"
  get "art" => "pages#art"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
