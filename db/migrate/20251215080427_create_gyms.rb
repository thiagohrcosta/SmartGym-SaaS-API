class CreateGyms < ActiveRecord::Migration[7.2]
  def change
    create_table :gyms do |t|
      t.string :name
      t.text :description
      t.references :plan, null: false, foreign_key: true
      t.boolean :active
      t.integer :billing_status

      t.timestamps
    end
  end
end
