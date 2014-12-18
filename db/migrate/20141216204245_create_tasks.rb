class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :content
      t.date :duedate
      t.references :tasklist, index: true

      t.timestamps null: false
    end
  end
end
