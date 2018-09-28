class ChangeYearToBeIntegerInMotos < ActiveRecord::Migration[5.2]
  def change
      change_column :motos, :year, :integer
  end
end
