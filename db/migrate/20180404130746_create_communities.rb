class CreateCommunities < ActiveRecord::Migration[5.1]
  def change
    create_table :communities do |t|
      t.string :name
      t.integer :location_id
      t.integer :status_id

      t.timestamps
    end
  end
end
