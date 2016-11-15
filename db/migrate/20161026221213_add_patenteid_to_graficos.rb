class AddPatenteidToGraficos < ActiveRecord::Migration
  def change
    add_reference :graficos, :patente, index: true, foreign_key: true
  end
end
