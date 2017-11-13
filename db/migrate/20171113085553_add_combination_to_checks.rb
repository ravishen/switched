class AddCombinationToChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :combination, :string
  end
end
