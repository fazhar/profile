Rails.application.routes.draw do

	resources :projects
    root 'static_pages#home'

    match '/home', to: 'static_pages#home', via: 'get'
    match '/about', to: 'static_pages#about', via: 'get'
    match '/add_project', to: 'projects#new', via: 'get'

end
