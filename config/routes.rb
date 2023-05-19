Rails.application.routes.draw do
  # resources :likes
  # get 'tasks/index'
  # get 'tasks/show'
  # get 'tasks/edit'
  # get 'tasks/new'
 resources :tasks
 resources :users














  # get '/student',to: 'student#index'
  # post '/student',to: 'student#create'
  #get '/student' ,to: 'student#index'
  # resources :student,only:[:create , :new]
  
 #resourceful route 
#   resources :students do
#   member do 
#     get :delete
#   end
# end

# concern :commentable do
#   resources :comments
# end

# resources :messages, concerns: :commentable


# resources :articles, concerns: :commentable

#namespace==it give /student/demo and /users urls,orgize group of controller
# namespace :student do
#   resources :demo, :users
# end

#scope==it give /student/demo and /users urls
# scope '/student' do
#   resources :demos, :users
# end

#scope with module:it give without /student,,only give /demo and /users urls
# scope module: 'student' do
#   resources :demos, :users
# end

# resources : do
#   resources :magazines do
#     resources :photos
#   end
# end

#if not define any action like member and collection --then bydefault it picked member action
#collection=id not require,need,,not return id,,it does not requrie the id of resoure,create index new action
# resources :students do
#   collection do
#     # get 'search'
#     get :personal_details
#   end
# end


#member==id return with id,it require a id of resourece to perform an action
# resources :students do
#   member do
#     get :active
#   end
# end
# #also write that
# get :active, do::member

# resources :students do
#   member do
#     get :active
#   end
# end
# get :action,do: :member


#nesting
# resources :publishers do
#   resources :magazines do
#     resources :photos
#   end
# end

#shallow 
# resources :articles do
#   resources :comments, only: [:index, :new, :create]
# end
# resources :comments, only: [:show, :edit, :update, :destroy]

#return all articles actions
# resources :articles do
#   resources :comments, shallow: true
# end

#all nested resource will be shallow ,,,work like same
# resources :articles, shallow: true do
#   resources :comments
#   resources :quotes
#   resources :drafts
# end





  # get 'student/index'
  # get 'demo/index'
  #  resources :
  # get '/demo/:id',to: 'demo#show'
  #  get '/demo',to: 'demo#index'



  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/") 
  # root "articles#index"
  # resources :niks
  #custom route give
  # get '/patients/:id', to: 'patients#show',as:'patient'
  # get '/photos/:id', to: 'photos#show',as:'photo'

  # get '/niks', to: 'niks#new' 

end
