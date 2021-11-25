# Edited 4/15/2020 by Alli Hornyak: add route for host/create_res, root, assign
# Edited 4/15/2020 by Tze Hei Tam: add route for customer/home
# Edited 4/20/2020 by Nina Yao: added route for host/index
# Edited 4/21/2020 by Alli Hornyak: add route for customer/create_res
# Edited 4/22/2020 by Tze Hei Tam: Removed redundant routes
# Edited 4/23/2020 by Tze Hei Tam: Removed routes from tables

Rails.application.routes.draw do
  devise_for :users
  resources :reservations
  resources :tables, only: [:update]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'pages#home'
end
