class SealCode < ActiveRecord::Base
  belongs_to :from_branch, :class_name => "branch"
  belongs_to :to_branch, :class_name => "branch"
  belongs_to :goldreport
  belongs_to :silverreport
end
