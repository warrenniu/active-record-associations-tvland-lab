class Actor < ActiveRecord::Base
has_many :characters
has_many :shows, through: :characters

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  #lists all of the characters that actor has alongside the show that the character is in
#   def actor_characters
#     self.characters.map {|char| char.name}
#   end

#   def actor_shows
#     self.shows.map {|sho| sho.name}
#   end



#   def list_roles
#     "#{self.actor_characters} - #{self.actor_shows}"
#   end

    def list_roles
        self.characters.map do |character|
        "#{character.name} - #{character.show.name}"
        end
    end
end