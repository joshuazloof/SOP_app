class CreateSops < ActiveRecord::Migration
  def change
    create_table :sops do |t|
      t.string :name
      t.datetime :date_created
      t.datetime :date_updated
      t.decimal :version
      t.string :SOP_owner

      t.timestamps
    end
  end
end
