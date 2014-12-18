class CreateIncomes < ActiveRecord::Migration
  def change
    create_table :incomes do |t|
      t.integer :amount
      t.string :from
      t.date :date
      t.references :month, index: true

      t.timestamps null: false
    end
  end
end
