class CreateCommunityRoles < ActiveRecord::Migration[5.1]
  def change
    create_table :community_roles do |t|
      t.string :name

      t.timestamps
    end
  end
end
