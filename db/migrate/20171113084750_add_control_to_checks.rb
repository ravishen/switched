class AddControlToChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :control, :string
  end
end
