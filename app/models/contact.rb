class Contact < MailForm::Base
  attribute :name, :validate => true, length: { minimum: 2 }
  attribute :phone, :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true


  def headers
    {
      :subject => "Contact Form - #{name}",
      :to => "contact@galenvs.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
