class DeleteStep < ActiveRecord::Migration
  def up
  		drop_table :steps
  end

  def down
  end
end
