Rails.application.routes.draw do
  get 'doses/new'
  get 'doses/create'
  get 'doses/edit'
  get 'cocktails/index'
  get 'cocktails/show'
  get 'cocktails/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cocktails, only: [:index, :show, :create, :new, ] do 
    resources :doses, only: [:create, :new, :destroy ] 
  end
  get 'doses', to: 'doses#create'
  post 'doses', to: 'doses#create'
end
