class CreateCommunityPeople < ActiveRecord::Migration[5.1]
  def change
    create_table :community_people do |t|
      t.integer :community_id
      t.integer :person_id
      t.integer :person_rol_id
      t.integer :status_id
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
