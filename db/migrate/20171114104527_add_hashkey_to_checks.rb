class AddHashkeyToChecks < ActiveRecord::Migration[5.1]
  def change
    add_column :checks, :hashkey, :string
  end
end
