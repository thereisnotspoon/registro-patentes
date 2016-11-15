class CreateGraficos < ActiveRecord::Migration
  def change
    create_table :graficos do |t|
      t.text :grafico

      t.timestamps null: false
    end
  end
end
