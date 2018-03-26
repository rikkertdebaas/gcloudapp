class Message < MailForm::Base
  include ActiveModel::Model
   attr_accessor :voornaam, :achternaam, :email, :telefoon, :bericht, :nickname
   validates :voornaam, :achternaam, :email, :telefoon, :bericht, presence: true
   def headers
    {
      :subject => "Aanmeldingsformulier",
      :to => "Richard.felius@gmail.com",
      :from => %("#{voornaam}" <#{email}>)
    }
  end
end
