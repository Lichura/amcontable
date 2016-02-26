class AddFotoToServicios < ActiveRecord::Migration
  def change
  	add_column :servicios, :foto_front, :string
  	add_column :servicios, :foto_back, :string
  end
end
