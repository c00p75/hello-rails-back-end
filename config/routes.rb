Rails.application.routes.draw do
  root to: redirect('/greetings/1')
  resources :greetings
end
