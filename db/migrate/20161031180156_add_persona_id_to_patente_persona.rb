class AddPersonaIdToPatentePersona < ActiveRecord::Migration
  def change
    add_reference :patente_personas, :persona, index: true, foreign_key: true
  end
end
