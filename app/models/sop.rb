class Sop < ActiveRecord::Base
  attr_accessible :SOP_owner, :date_created, :date_updated, :name, :version
  has_many :steps
end
