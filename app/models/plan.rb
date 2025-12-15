class Plan < ApplicationRecord
  has_many :gyms

  validates :name, presence: true
  validates :price_cents, presence: true, numericality: { greater_than: 0 }
end
