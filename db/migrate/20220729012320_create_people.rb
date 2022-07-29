class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :nickname, null: false
      t.integer :sex, limit: 1, null: false

      t.timestamps
    end
  end
end
