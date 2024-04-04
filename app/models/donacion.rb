class Donacion < ApplicationRecord
  belongs_to :producto
  belongs_to :alimento
  belongs_to :solicitud
end
