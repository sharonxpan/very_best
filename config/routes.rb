Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root :to => "dishes#index"
  # Routes for the Bookmark resource:

  # CREATE
  get("/bookmarks/new", { :controller => "bookmarks", :action => "new_form" })
  post("/create_bookmark", { :controller => "bookmarks", :action => "create_row" })
  post("/create_bookmark_from_venue", { :controller => "bookmarks", :action => "create_row_from_venue" })
  post("/create_bookmark_from_dish", { :controller => "bookmarks", :action => "create_row_from_dish" })

  # READ
  get("/bookmarks", { :controller => "bookmarks", :action => "index" })
  get("/bookmarks/:id_to_display", { :controller => "bookmarks", :action => "show" })

  # UPDATE
  get("/bookmarks/:prefill_with_id/edit", { :controller => "bookmarks", :action => "edit_form" })
  post("/update_bookmark/:id_to_modify", { :controller => "bookmarks", :action => "update_row" })

  # DELETE
  get("/delete_bookmark/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row" })
  get("/delete_bookmark_from_venues/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row_from_venues" })
  get("/delete_bookmark_from_dish/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row_from_dish" })
  get("/delete_bookmark_from_user/:id_to_remove", { :controller => "bookmarks", :action => "destroy_row_from_user" })

  #------------------------------

  # Routes for the Venue resource:

  # CREATE
  get("/venues/new", { :controller => "venues", :action => "new_form" })
  post("/create_venue", { :controller => "venues", :action => "create_row" })

  # READ
  get("/venues", { :controller => "venues", :action => "index" })
  get("/venues/:id_to_display", { :controller => "venues", :action => "show" })

  # UPDATE
  get("/venues/:prefill_with_id/edit", { :controller => "venues", :action => "edit_form" })
  post("/update_venue/:id_to_modify", { :controller => "venues", :action => "update_row" })

  # DELETE
  get("/delete_venue/:id_to_remove", { :controller => "venues", :action => "destroy_row" })

  #------------------------------

  # Routes for the Dish resource:

  # CREATE
  get("/dishes/new", { :controller => "dishes", :action => "new_form" })
  post("/create_dish", { :controller => "dishes", :action => "create_row" })

  # READ
  get("/dishes", { :controller => "dishes", :action => "index" })
  get("/dishes/:id_to_display", { :controller => "dishes", :action => "show" })

  # UPDATE
  get("/dishes/:prefill_with_id/edit", { :controller => "dishes", :action => "edit_form" })
  post("/update_dish/:id_to_modify", { :controller => "dishes", :action => "update_row" })

  # DELETE
  get("/delete_dish/:id_to_remove", { :controller => "dishes", :action => "destroy_row" })

  #------------------------------

  devise_for :users
  # Routes for the User resource:

  # READ
  get("/users", { :controller => "users", :action => "index" })
  get("/users/:id_to_display", { :controller => "users", :action => "show" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
