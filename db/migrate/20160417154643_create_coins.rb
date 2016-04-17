class CreateCoins < ActiveRecord::Migration[5.0]
  def change
    create_table :coins do |t|
      t.boolean :heads, null: false
      t.timestamps
    end
  end
end
