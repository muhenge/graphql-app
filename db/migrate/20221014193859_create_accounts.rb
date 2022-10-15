class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.integer :debit
      t.integer :credit
      t.integer :amount
      t.time :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
