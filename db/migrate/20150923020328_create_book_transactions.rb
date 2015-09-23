class CreateBookTransactions < ActiveRecord::Migration
  def change
    create_table :book_transactions do |t|
      t.integer :isbn
      t.string :name
      t.string :member

      t.timestamps null: true
    end
  end
end
