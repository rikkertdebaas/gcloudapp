class MessageMailer < ApplicationMailer
  default from: "Richard@cesarwise.nl <nonreply@yourdomain.com>"
  default to: "your Name <Richard.felius@gmail.com"
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.message_mailer.contact_me.subject
  #
  def contact_me(message)
    @bericht = message.bericht

    mail to: "Richard.felius@gmail.com"
    #mail subect: "Message from #{Message.voornaam}"
  
  end
  def headers
    {
      :subject => "Aanmeldingsformulier",
      :to => "Richard.felius@gmail.com",
      :from => %("#{voornaam}" <#{email}>)
    }
end
end
