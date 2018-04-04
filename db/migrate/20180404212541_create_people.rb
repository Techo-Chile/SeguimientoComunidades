class CreatePeople < ActiveRecord::Migration[5.1]
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.string :gender
      t.string :mail
      t.string :phone

      t.timestamps
    end
  end
end
