class CreateFukus < ActiveRecord::Migration[8.1]
  def change
    create_table :fukus do |t|
      t.string :name
      t.integer :price
      t.string :url

      t.timestamps
    end
  end
end
