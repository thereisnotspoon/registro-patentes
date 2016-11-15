class Grafico < ActiveRecord::Base
    belongs_to :patente
    mount_uploader :grafico, GraficoUploader # Tells rails to use this uploader for this model.
end
