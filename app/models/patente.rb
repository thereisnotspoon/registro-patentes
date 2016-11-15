class Patente < ActiveRecord::Base
    has_many :graficos
    has_many :patente_personas
    has_many :personas, through: :patente_personas
end
    