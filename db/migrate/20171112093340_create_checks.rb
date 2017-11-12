class CreateChecks < ActiveRecord::Migration[5.1]
  def change
    create_table :checks do |t|
      t.integer :pin1
      t.integer :pin2
      t.integer :pin3
      t.integer :pin4

      t.timestamps
    end
  end
end
