class GoldReport < ActiveRecord::Base
  belongs_to :branch
  belongs_to :assistants
  include AASM

  class GoldReport::State
    include AASM

    aasm do
      state :draft, :initial => true
      state :preapproved
      state :approved

      event :preapprove do
         transitions :from => :draft, :to => :preapproved
      end
      event :approve do
         transitions :from => :preapproved, :to => :approved
      end
    end

  end

end
