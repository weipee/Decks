class Card < ActiveRecord::Base
  # Remember to create a migration!
  belong_to :deck
end
