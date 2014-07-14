Rails.application.routes.draw do

	resources :projects do
		resources :uploads
	end
    root 'static_pages#home'

    match '/home', to: 'static_pages#home', via: 'get'
    match '/add_project', to: 'projects#new', via: 'get'

end
