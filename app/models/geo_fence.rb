class GeoFence < ApplicationRecord  
  scope :santiago_terminal, -> () {
    where("description like 'Terminal Estación Central' ").first
  }

  scope :peor_es_nada_terminal, -> () {
    where("description like 'Terminal Peor es Nada' ").first
  }  
end
