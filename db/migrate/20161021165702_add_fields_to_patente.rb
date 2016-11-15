class AddFieldsToPatente < ActiveRecord::Migration
  def change
    add_column :patentes, :tipo_expediente, :string
    add_column :patentes, :fecha_presentacion, :string
    add_column :patentes, :numero_solicitud, :string
    add_column :patentes, :fecha_de_presentacion_intern, :string
    add_column :patentes, :numero_solicitud_intern, :string
    add_column :patentes, :fecha_de_publicacion_intern, :string
    add_column :patentes, :numero_publicacion_intern, :string
    add_column :patentes, :denominacion_titulo, :string
    add_column :patentes, :solicitante_titular, :string
    add_column :patentes, :inventor, :string
    add_column :patentes, :prioridad, :string
    add_column :patentes, :clase_ipc, :string
    add_column :patentes, :resumen, :string
    add_column :patentes, :graficos, :string
    add_column :patentes, :representante, :string
    add_column :patentes, :correspondencia, :string
  end
end
