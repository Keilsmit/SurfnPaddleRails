Rails.application.routes.draw do

  root 'welcome#index'
  get '/about/' => 'about#info', as: :about_page
  get '/posts/:id' => 'welcome#show', as: :post





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
