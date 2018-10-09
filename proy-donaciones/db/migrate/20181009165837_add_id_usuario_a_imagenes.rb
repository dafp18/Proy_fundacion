class AddIdUsuarioAImagenes < ActiveRecord::Migration[5.2]
  def change
    add_reference :imagens, :usuario, foreing_key: true
  end
end
