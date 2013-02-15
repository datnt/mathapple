Mathapple::Application.routes.draw do
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  root :to => 'app_managers#danh_muc'
  resources :app_managers do
    collection do
      get  :danh_muc, :mucluc, :reception
      post :xulymahs, :newhs
    end
  end
  resources :bai_taps do
    collection do
      get :cau_hoi, :cac_cau_hoi, :bai_thi, :them_cau_hoi, :form_cau_hoi
      post :luu_phep_cong, :luu_bai_thi, :luu_sosanhps, :luu_phansotp, :luu_congps,
        :luu_trups, :luu_nhanps, :luu_chiaps, :luu_honso, :luu_dodai, :luu_honsotp,
        :luu_congnhieutp, :luu_tpvatong, :luu_trutp, :luu_nhantptn, :luu_nhantp10k,
      :luu_nhantptp,:luu_chiatptn, :luu_chiatp10k,:luu_chiatntntp, :luu_chiatntp,
      :luu_chiatptp, :luu_tiso
    end
  end
  resources :loai_cau_hois do
  end
end
