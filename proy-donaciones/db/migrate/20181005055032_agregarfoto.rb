class Agregarfoto < ActiveRecord::Migration[5.2]
  def change
    add_column :imagens, :addfoto, :string
  end
end
