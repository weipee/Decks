class Round < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user
  has_many :guess
end
