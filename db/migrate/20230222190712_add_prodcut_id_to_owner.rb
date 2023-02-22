class AddProdcutIdToOwner < ActiveRecord::Migration[7.0]
  def change
    add_reference :owners, :product, null: false, foreign_key: true
  end
end
