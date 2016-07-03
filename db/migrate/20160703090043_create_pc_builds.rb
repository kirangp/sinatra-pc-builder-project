class CreatePcBuilds < ActiveRecord::Migration
  def change
    create_table :pc_builds do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
    end
  end
end
