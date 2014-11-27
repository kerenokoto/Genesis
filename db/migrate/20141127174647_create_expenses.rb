class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.string :title
      t.float :salary
      t.float :maintenance
      t.float :utility_bills
      t.float :total_expenses

      t.timestamps
    end
  end
end
