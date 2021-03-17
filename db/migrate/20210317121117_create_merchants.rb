class CreateMerchants < ActiveRecord::Migration[6.1]
  def change
    create_table :merchants do |t|
      t.string :name
      t.email :email
      t.string :cif

      t.timestamps
    end
  end
end
