class Imagen < ApplicationRecord
    mount_uploader :addfoto, FotoUploader
end
