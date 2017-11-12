class CreateSwitches < ActiveRecord::Migration[5.1]
  def change
    create_table :switches do |t|
      t.string :pin1
      t.string :pin2
      t.string :pin3
      t.string :pin4
      t.boolean :p1value
      t.boolean :p2value
      t.boolean :p3value
      t.boolean :p4value

      t.timestamps
    end
  end
end
