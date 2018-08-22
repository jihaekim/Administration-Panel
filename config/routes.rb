Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :teachers
  resources :students
  resources :cohorts
  resources :courses
end

# get '/teachers', to:'teachers#new'
# post '/teachers', to: 'teachers#create'


