class Gym < ApplicationRecord
  belongs_to :plan
  has_many :users

  enum billing_status: {
    trial: "trial",
    active: "active",
    overdue: "overdue",
    canceled: "canceled"
  }

  validates :name, presence: true
end
