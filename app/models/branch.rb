class Branch < ActiveRecord::Base
  has_many :seal_codes, class_name: "Branch", foreign_key: "from_branch"
  has_many :seal_codes, class_name: "Branch", foreign_key: "to_branch"
end

def namecode;
  " #{code} #{name}";
end
