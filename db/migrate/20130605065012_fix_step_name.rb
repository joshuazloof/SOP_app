class FixStepName < ActiveRecord::Migration
  def up
  	rename_column :steps, :SOPID, :sop_id
  end

  def down
  end
end
