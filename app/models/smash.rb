class Smash < ActiveRecord::Base

  belongs_to :user
  has_many :smirks
  has_many :likes
  acts_as_votable
end
