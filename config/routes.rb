Rails.application.routes.draw do
  root 'sessions#homepage'
  resources :users,
    path_names: { new: 'signup'}
  get 'study_exercises' => 'study_exercises#study_exercises'
  get 'ruby_on_rails_exercises' => 'study_exercises#ruby_on_rails_exercises'
  get 'updated_content' => 'study_exercises#updated_content'
  get 'lrthw' => 'study_exercises#lrthw'
  get 'number_letters_and_variables' => 'study_exercises#number_letters_and_variables'
  get 'methods_and_flow_control' => 'study_exercises#methods_and_flow_control'
  get 'git_101' => 'study_exercises#git_101'
  get 'git_102' => 'study_exercises#git_102'

  get 'useful_sources' => 'useful_sources#useful_sources'
  get 'reading_blogs' => 'useful_sources#reading_blogs'
  get 'build_my_brand' => 'useful_sources#build_my_brand'
  get 'pivotal_tracker' => 'useful_sources#pivotal_tracker'

  get 'adventure' => 'coding_adventure#adventure'
  get 'adventure_paths' => 'coding_adventure#adventure_paths'
  get 'adventure_start' => 'coding_adventure#adventure_start'
  get 'adventure_number_1' => 'coding_adventure#adventure_number_1'
  get 'adventure_number_2' => 'coding_adventure#adventure_number_2'
  get 'adventure_number_3' => 'coding_adventure#adventure_number_3'
  get 'adventure_number_4' => 'coding_adventure#adventure_number_4'
  get 'adventure_number_5' => 'coding_adventure#adventure_number_5'
  get 'adventure_number_6' => 'coding_adventure#adventure_number_6'
  get 'adventure_letter_1' => 'coding_adventure#adventure_letter_1'
  get 'adventure_letter_2' => 'coding_adventure#adventure_letter_2'
  get 'adventure_letter_3' => 'coding_adventure#adventure_letter_3'
  get 'adventure_letter_4' => 'coding_adventure#adventure_letter_4'

  get 'login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#adventure_1'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
