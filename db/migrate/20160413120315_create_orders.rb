class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :country_code
      t.string :subregion_code

      t.timestamps null: false
    end
  end
end
