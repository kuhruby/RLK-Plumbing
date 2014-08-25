module InvoiceHelper

  def usd(x)
    number_to_currency(x.amount_in_cents / 100.0)
  end

end
