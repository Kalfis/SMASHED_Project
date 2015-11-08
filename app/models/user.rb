class User < ActiveRecord::Base
  has_secure_password
  has_many :smashes
  has_many :smirks
  acts_as_voter
  validates :email, presence: true
  validates :password, length:{in: 5..20}
  validates :password_confirmation, presence: true

end
