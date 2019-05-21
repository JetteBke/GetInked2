class CreateTattoos < ActiveRecord::Migration[5.2]
  def change
    create_table :tattoos do |t|
      t.string :photo
      t.text :description

      t.timestamps
    end
  end
end
