class AddForeignKeyToMotos < ActiveRecord::Migration[5.2]
  def change
    add_foreign_key :motos, :users
  end
end
