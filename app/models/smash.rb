class Smash < ActiveRecord::Base
  belongs_to :user
  has_many :smirks
  acts_as_votable
end
