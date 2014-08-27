class InvoiceMailer < ActionMailer::Base
  default from: "no-reply@rlkplumbing.com"

  def post_email(invoice)
    @invoice = invoice
    @url = "http://rlkplumbing.herokuapp.com/invoice/#{invoice.token}"
    mail(:to => "#{invoice.name} <#{invoice.email}>", :subject => "Service Invoice")
  end

end
