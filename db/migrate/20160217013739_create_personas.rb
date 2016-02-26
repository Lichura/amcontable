class CreatePersonas < ActiveRecord::Migration
  def change
    create_table :personas do |t|
      t.string :nombre
      t.string :descripcion
      t.string :foto

      t.timestamps null: false
    end
  end
end
