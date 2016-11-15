class CreatePatentePersonas < ActiveRecord::Migration
  def change
    create_table :patente_personas do |t|

      t.timestamps null: false
    end
  end
end
