Rails.application.routes.draw do
  get '/products' => 'products#index' #products = controller// hashtag means referencing a method
  get '/products/:id' => 'products#show'
  post '/products' => 'products#create' #can still use the /products bc we're doing post not get.
  patch '/products/:id' => 'products#update'
  delete '/products/:id' => 'products#destroy'

  get '/dogs' => 'dogs#index'
  post '/dogs' => 'dogs#create'

  get '/cats' => 'cats#index'
  get '/cats/:id' => 'cats#show'
  post '/cats' => 'cats#create'
  patch '/cats/:id' => 'cats#update'
  delete '/cats/:id' => 'cats#destroy'

  get '/students' => 'students#index'
  post '/students' => 'students#create'

  get '/teachers' => 'teachers#index'
  post '/teachers' => 'teachers#create'
  patch '/teachers/:id' => 'teachers#update'
end
#Model = always capitalized, singular
#Controllers = always lowercase, plural

