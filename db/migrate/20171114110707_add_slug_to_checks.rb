class AddSlugToChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :slug, :string
    add_index :checks, :slug, unique: true
  end
end
