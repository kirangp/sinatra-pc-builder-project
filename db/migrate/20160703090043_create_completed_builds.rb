class CreateCompletedBuilds < ActiveRecord::Migration
  def change
    create_table :completed_builds do |t|
      t.string :name
      t.integer :price
      t.integer :user_id
    end
  end
end
