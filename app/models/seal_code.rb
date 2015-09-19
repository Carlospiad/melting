class SealCode < ActiveRecord::Base
  belongs_to :goldreport
  belongs_to :branch, foreign_key: "from_branch" 
end
