class CreateMapas < ActiveRecord::Migration[5.2]
  def change
    create_table :mapas do |t|
      t.string :mapa
      t.string :localidad

      t.timestamps
    end
  end
end
