class Step < ActiveRecord::Base
  attr_accessible :sop_id, :instruction, :isCurrent, :orderNum, :timing, :tip
  belongs_to :sop
end
