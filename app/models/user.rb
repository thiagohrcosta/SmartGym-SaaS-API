class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist

  belongs_to :gym, optional: true

  validates :username, presence: true

  enum role: {
    user: 0,
    trainer: 1,
    gym_admin: 2,
    super_admin: 3,
  }
end