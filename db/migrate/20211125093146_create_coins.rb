class CreateCoins < ActiveRecord::Migration[6.1]
  def change
    create_table :coins do |t|
      t.string        :symbol
      t.string        :quantity
      t.string        :exchange
      t.timestamps
    end
  end
end
