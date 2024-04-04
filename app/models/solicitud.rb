class Solicitud < ApplicationRecord
  belongs_to :voluntario
  belongs_to :organizacion_benefica
  belongs_to :inventario
  belongs_to :user
end
