class Game < ApplicationRecord
    belongs_to :user
    # validates_presence_of :user_id
    # validates_presence_of :artist_id
    # validates_presence_of :score
    # validates_presence_of :hard
end