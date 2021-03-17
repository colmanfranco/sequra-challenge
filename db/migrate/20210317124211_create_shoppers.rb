class CreateShoppers < ActiveRecord::Migration[6.1]
  def change
    create_table :shoppers do |t|
      t.string :name
      t.email :email
      t.string :nif

      t.timestamps
    end
  end
end
