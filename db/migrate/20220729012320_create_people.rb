class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :nickname, null: false
      t.integer :sex, limit: 1, null: false
      t.integer :prefecture_id, limit: 1, null: false
    end

    create_table :prefectures_person_wants_to_live_in do |t|
      t.belongs_to :prefecture
      t.belongs_to :person
    end
  end
end
