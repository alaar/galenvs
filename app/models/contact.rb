class Contact < MailForm::Base
  attribute :name, :validate => true, length: { minimum: 2 }
  attribute :phone, :validate => /\A(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}\z/,
                               message: I18n.t('global.errors.phone_format')
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
