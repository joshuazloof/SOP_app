class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.integer :orderNum
      t.string :instruction
      t.float :timing
      t.string :tip
      t.boolean :isCurrent
      t.integer :SOPID

      t.timestamps
    end
  end
end
