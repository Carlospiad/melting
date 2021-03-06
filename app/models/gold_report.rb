class GoldReport < ActiveRecord::Base
  belongs_to :branch
  belongs_to :assistants
  has_many :seal_codes

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
    event :reject do
       transitions :from => :preapproved, :to => :draft
    end
  end

end
