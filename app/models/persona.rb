class Persona < ActiveRecord::Base
    has_many :patente_personas
    has_many :patentes, through: :patente_personas
end
