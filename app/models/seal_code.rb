class SealCode < ActiveRecord::Base
  belongs_to :branch, foreign_key: "from_branch"
  belongs_to :branch, foreign_key: "to_branch"
  belongs_to :goldreport

end
