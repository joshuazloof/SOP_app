class AddSopidToSteps < ActiveRecord::Migration
  def change
    add_column :steps, :SOPID, :integer
  end
end
