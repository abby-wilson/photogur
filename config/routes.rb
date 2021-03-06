Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# root 'pictures#index'
# get 'pictures' => 'pictures#index'

post 'pictures' => 'pictures#create'
get 'pictures/new' => 'pictures#new'

get 'pictures/:id/edit' => 'pictures#edit'
patch 'pictures/:id' => 'pictures#update'

delete 'pictures/:id' => 'pictures#destroy'

get 'pictures/:id' => 'pictures#show'

resource :users, only: %i(create new)
  # resource :sessions, only: %i(create new destroy)

  root 'users#new'
end
