class Imagen < ApplicationRecord
    mount_uploader :foto, FotoUploader
end
