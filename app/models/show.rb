require 'pry'
class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.characters.collect do |character|
          Actor.find_by(id:character.actor_id).full_name
        end

    end
end