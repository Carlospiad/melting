class GoldReport < ActiveRecord::Base
  belongs_to :branch
  belongs_to :assistants
end
