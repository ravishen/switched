class CreateControls < ActiveRecord::Migration[5.1]
  def change
    create_table :controls do |t|
      t.string :title
      t.boolean :pin1
      t.boolean :pin2
      t.boolean :pin3
      t.boolean :pin4

      t.timestamps
    end
  end
end
