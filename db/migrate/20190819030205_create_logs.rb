class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.integer :amount
      t.references :asset, foreign_key: true

      t.timestamps
    end
  end
end
