class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :apellidos
      t.string :nombres
      t.string :pais_de_origen
      t.string :documeto_de_dentificaion
      t.string :numero_de_documento
      t.string :fecha_de_nacimiento
      t.string :fecha_de_defuncion
      t.string :pais_de_residencia
      t.string :lugar
      t.string :direccion
      t.string :telefonos
      t.string :faxes
      t.string :codigo_postal
      t.string :persona_natural
      t.string :residente_en_ecuador
      t.string :codigo

      t.timestamps null: false
    end
  end
end
