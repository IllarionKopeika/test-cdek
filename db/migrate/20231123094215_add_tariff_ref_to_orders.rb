class AddTariffRefToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :tariff, null: false, foreign_key: true
  end
end
