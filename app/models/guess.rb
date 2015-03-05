class Guess < ActiveRecord::Base
  # Remember to create a migration!
  belong_to :round
end
