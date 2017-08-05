Rails.application.routes.draw do
  
  resources :blogs do
    collection do
      get :top_search
      post :upload_image
    end
  end
  namespace :admin do
    resources :comments do
	collection do
        get :show_name
      end  
    end
    resources :categories do
	collection do
        get :show_name
      end  
    end
    resources :employees do
      collection do
        get  :forget_password
        post :forget_password
        get  :reset_mail
        get  :error_mail    
      end
    end
    resources :blogs do
      collection do
        post :upload_image
      end
    end
  end

  devise_for :employees, path: "admin", path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', confirmation: 'verification', unlock: 'unblock', sign_up: 'cmon_let_me_in' }, controllers: { sessions: "admin/sessions", passwords: "admin/passwords"}
  root to: 'blogs#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
