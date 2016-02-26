class AddServicioIdToServiciosLists < ActiveRecord::Migration
  def change
    add_column :servicios_lists, :servicio_id, :integer
  end
end
