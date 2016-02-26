class CreateServiciosLists < ActiveRecord::Migration
  def change
    create_table :servicios_lists do |t|
      t.string :servicio
      t.string :descripcion
      t.references :servicios, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
