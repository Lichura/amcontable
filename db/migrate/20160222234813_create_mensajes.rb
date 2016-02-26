class CreateMensajes < ActiveRecord::Migration
  def change
    create_table :mensajes do |t|
      t.string :nombre
      t.string :mail
      t.string :telefono
      t.string :consulta

      t.timestamps null: false
    end
  end
end
