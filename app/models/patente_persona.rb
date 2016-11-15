class PatentePersona < ActiveRecord::Base
    belongs_to :patente
    belongs_to :persona
end
