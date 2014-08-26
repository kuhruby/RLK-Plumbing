class Contact < MailForm::Base

  attribute :first_name, :validate => true
  attribute :last_name, :validate => true
  attribute :address, :validate => true
  attribute :city, :validate => true
  attribute :zip, :validate => true
  attribute :phone, :validate => true
  attribute :email, :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :date, :validate => true
  attribute :message, :validate => true

  def headers
    {
      :subject => "Service Request",
      :to => "aerosolgenie@gmail.com",
      :from => %("#{first_name} #{last_name}" <#{email}>)
    }
  end

end
