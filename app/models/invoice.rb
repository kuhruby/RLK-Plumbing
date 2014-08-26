class Invoice < ActiveRecord::Base

  belongs_to :admin

  # validates :token, presence: true
  validates :amount_in_cents, presence: true
  validates :description, presence: true
  validates :email, presence: true
  validates :name, presence: true
  validates :address, presence: true
  # validates :stripe_charge_id, presence: true

  before_validation(on: :create) do
    self.token = SecureRandom.hex[0,10].upcase
  end

  after_create :send_invoice

  def send_invoice
    InvoiceMailer.post_email(self).deliver
  end

end
