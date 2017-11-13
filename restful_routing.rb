      Prefix Verb   URI Pattern                  Controller#Action
       users GET    /users(.:format)             users#index
             POST   /users(.:format)             users#create
    new_user GET    /users/new(.:format)         users#new
   edit_user GET    /users/:id/edit(.:format)    users#edit
        user GET    /users/:id(.:format)         users#show
             PATCH  /users/:id(.:format)         users#update
             PUT    /users/:id(.:format)         users#update
             DELETE /users/:id(.:format)         users#destroy
    comments GET    /comments(.:format)          comments#index
             POST   /comments(.:format)          comments#create
 new_comment GET    /comments/new(.:format)      comments#new
edit_comment GET    /comments/:id/edit(.:format) comments#edit
     comment GET    /comments/:id(.:format)      comments#show
             PATCH  /comments/:id(.:format)      comments#update
             PUT    /comments/:id(.:format)      comments#update
             DELETE /comments/:id(.:format)      comments#destroy
       posts GET    /posts(.:format)             posts#index
             POST   /posts(.:format)             posts#create
    new_post GET    /posts/new(.:format)         posts#new
   edit_post GET    /posts/:id/edit(.:format)    posts#edit
        post GET    /posts/:id(.:format)         posts#show
             PATCH  /posts/:id(.:format)         posts#update
             PUT    /posts/:id(.:format)         posts#update
             DELETE /posts/:id(.:format)         posts#destroy
        root GET    /                            home#index
       login GET    /login(.:format)             login#new
      logout DELETE /logout(.:format)            login#delete
  login_info POST   /login(.:format)             login#create
     friends GET    /friends(.:format)           friends#index
             POST   /friends(.:format)           friends#create
  new_friend GET    /friends/new(.:format)       friends#new
 edit_friend GET    /friends/:id/edit(.:format)  friends#edit
      friend GET    /friends/:id(.:format)       friends#show
             PATCH  /friends/:id(.:format)       friends#update
             PUT    /friends/:id(.:format)       friends#update
             DELETE /friends/:id(.:format)       friends#destroy
