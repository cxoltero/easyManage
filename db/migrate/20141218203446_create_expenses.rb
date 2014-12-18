class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :amount
      t.string :to
      t.date :duedate
      t.references :month, index: true

      t.timestamps null: false
    end
  end
end
