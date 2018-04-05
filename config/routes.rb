Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'homepage#welcome'
get'/about', to: 'pages#about'
get'/signup', to: 'users#new'
resources :articles


# post 'users', to: 'users#create'



resources :users, except: [:new]
get 'login' ,to: 'sessions#new'
post 'login' ,to: 'sessions#create'
delete'logout' ,to: 'sessions#destroy'


resources :categories, except: [:destroy]
end
 