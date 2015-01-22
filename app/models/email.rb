class Email < ActiveRecord::Base
  validates :text, presence: true
end
