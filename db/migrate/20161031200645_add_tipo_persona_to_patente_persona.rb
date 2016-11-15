class AddTipoPersonaToPatentePersona < ActiveRecord::Migration
  def change
    add_column :patente_personas, :tipo_persona, :string
  end
end
