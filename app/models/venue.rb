class Venue < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :foreign_key => "venues_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :dishes,
             :through => :bookmarks,
             :source => :dish

  has_many   :users,
             :through => :bookmarks,
             :source => :user

  # Validations

end
