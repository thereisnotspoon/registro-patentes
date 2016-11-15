class AddPatenteIdToPatentePersona < ActiveRecord::Migration
  def change
    add_reference :patente_personas, :patente, index: true, foreign_key: true
  end
end
