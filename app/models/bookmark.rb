class Bookmark < ApplicationRecord
  # Direct associations

  belongs_to :venues,
             :class_name => "Venue"

  belongs_to :dish

  belongs_to :user

  # Indirect associations

  # Validations

end
