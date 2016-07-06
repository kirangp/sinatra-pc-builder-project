class CreateSystem < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :cpu
      t.string :motherboard
      t.string :memory
      t.string :storage
      t.string :videocard
      t.string :powersupply
      t.string :case
      t.integer :completed_build_id
    end
  end
end
