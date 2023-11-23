class CreateTariffs < ActiveRecord::Migration[7.0]
  def change
    create_table :tariffs do |t|
      t.integer :tariff_code
      t.string :tariff_name

      t.timestamps
    end
  end
end
