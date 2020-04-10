Rails.application.routes.draw do


  get 'requests/index'
  get 'requests/new'
  get 'requests/edit'
  get 'requests/show'
  get 'products/index'
  get 'products/new'
  get 'products/edit'
  get 'products/show'
  get 'branches/index'
  get 'branches/new'
  get 'branches/edit'
  get 'branches/show'
  get 'users/index'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root :to => 'session#create'

resources :users  #, :only => [:new,:create,:index]
#
get '/login' => 'session#new'
post '/login' => 'session#create'
# delete '/login' => 'session#destroy'

resources :branches
resources :products
resources :requests

post '/requests/create' => 'requests#create'
post '/requests/:id/update' => 'requests#update'
end
