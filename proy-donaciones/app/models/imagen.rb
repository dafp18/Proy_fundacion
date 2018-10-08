class Imagen < ApplicationRecord
    
    mount_uploader :addfoto, FotoUploader

    validates :descripcion, presence: true
end
