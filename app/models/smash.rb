class Smash < ActiveRecord::Base
  belongs_to :user
  has_many :smirks
end
