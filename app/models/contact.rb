class Contact < MailForm::Base

  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :address, :validate => true
  attribute :city, :validate => true
  attribute :zip, :validate => true
  attribute :phone, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message, :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "Service Request",
      :to => "authenticopy@yahoo.com",
      :from => %("#{name}" <#{email}>)
    }
  end

end
