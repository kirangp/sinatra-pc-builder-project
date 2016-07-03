class CreateIndividualBuilds < ActiveRecord::Migration
  def change
    create_table :individual_builds do |t|
      t.string :cpu
      t.string :motherboard
      t.string :memory
      t.string :storage
      t.string :videocard
      t.string :powersupply
      t.string :case
      t.integer :pc_build_id
    end
  end
end
