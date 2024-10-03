class CreateOptions < ActiveRecord::Migration[7.2]
  def change
    create_table :options do |t|
      t.decimal :stock_price
      t.decimal :strike_price
      t.date :expiry_date
      t.decimal :risk_free_rate
      t.decimal :volatility
      t.string :option_type

      t.timestamps
    end
  end
end
