class CreateLotteries < ActiveRecord::Migration[5.0]
  def change
    create_table :lotteries do |t|
      t.integer :transactions_id
      t.integer :user_id
      t.integer :amount
      t.integer :raffle_number
      t.date :date

      t.timestamps

    end
  end
end
