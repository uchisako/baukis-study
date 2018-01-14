class AlterPhones2 < ActiveRecord::Migration[5.1]
  def change
    add_column :phones, :last_four_digits, :string

    add_index :phones, :last_four_digits
  end
end
