class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.integer :amount
      t.boolean :lottery_elligible
      t.date :date
      t.integer :lottery_id

      t.timestamps

    end
  end
end
