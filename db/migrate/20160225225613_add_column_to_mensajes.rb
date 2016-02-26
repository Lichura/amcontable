class AddColumnToMensajes < ActiveRecord::Migration
  def change
  	add_column :mensajes, :leido, :boolean
  end
end
