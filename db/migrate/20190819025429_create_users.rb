class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :twitter_uid
      t.float :balance

      t.timestamps
    end
  end
end
