      Prefix Verb   URI Pattern                  Controller#Action
  home_index GET    /home(.:format)              home#index
             POST   /home(.:format)              home#create
    new_home GET    /home/new(.:format)          home#new
   edit_home GET    /home/:id/edit(.:format)     home#edit
        home GET    /home/:id(.:format)          home#show
             PATCH  /home/:id(.:format)          home#update
             PUT    /home/:id(.:format)          home#update
             DELETE /home/:id(.:format)          home#destroy
    comments GET    /comments(.:format)          comments#index
             POST   /comments(.:format)          comments#create
 new_comment GET    /comments/new(.:format)      comments#new
edit_comment GET    /comments/:id/edit(.:format) comments#edit
     comment GET    /comments/:id(.:format)      comments#show
             PATCH  /comments/:id(.:format)      comments#update
             PUT    /comments/:id(.:format)      comments#update
             DELETE /comments/:id(.:format)      comments#destroy
 login_index GET    /login(.:format)             login#index
             POST   /login(.:format)             login#create
   new_login GET    /login/new(.:format)         login#new
  edit_login GET    /login/:id/edit(.:format)    login#edit
       login GET    /login/:id(.:format)         login#show
             PATCH  /login/:id(.:format)         login#update
             PUT    /login/:id(.:format)         login#update
             DELETE /login/:id(.:format)         login#destroy
     friends GET    /friends(.:format)           friends#index
             POST   /friends(.:format)           friends#create
  new_friend GET    /friends/new(.:format)       friends#new
 edit_friend GET    /friends/:id/edit(.:format)  friends#edit
      friend GET    /friends/:id(.:format)       friends#show
             PATCH  /friends/:id(.:format)       friends#update
             PUT    /friends/:id(.:format)       friends#update
             DELETE /friends/:id(.:format)       friends#destroy
       users GET    /users(.:format)             users#index
             POST   /users(.:format)             users#create
    new_user GET    /users/new(.:format)         users#new
   edit_user GET    /users/:id/edit(.:format)    users#edit
        user GET    /users/:id(.:format)         users#show
             PATCH  /users/:id(.:format)         users#update
             PUT    /users/:id(.:format)         users#update
             DELETE /users/:id(.:format)         users#destroy
       posts GET    /posts(.:format)             posts#index
             POST   /posts(.:format)             posts#create
    new_post GET    /posts/new(.:format)         posts#new
   edit_post GET    /posts/:id/edit(.:format)    posts#edit
        post GET    /posts/:id(.:format)         posts#show
             PATCH  /posts/:id(.:format)         posts#update
             PUT    /posts/:id(.:format)         posts#update
             DELETE /posts/:id(.:format)         posts#destroy
