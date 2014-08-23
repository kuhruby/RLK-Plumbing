class Invoice < ActiveRecord::Base

  belongs_to :admin

  validates :token, presence: true
  validates :amount_in_cents, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :name, presence: true
  validates :address, presence: true
  validates :stripe_charge_id, presence: true

end
