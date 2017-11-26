class CreateAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :accounts do |t|
      t.date :date, index: true, null: false
      t.string :balance

      t.timestamps
    end
  end
end
