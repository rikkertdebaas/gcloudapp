class ApplicationMailer < ActionMailer::Base
  default from: 'from@example.com'
  default to: "Richard.felius@gmail.com"
  layout 'mailer'

  def contact_me(message)
    @bericht = message.bericht

    mail to: "Richard.felius@gmail.com"
    mail subject: "Message from #{Message.voornaam}"

  end
  def headers
    {
      :subject => "Aanmeldingsformulier",
      :to => "Richard.felius@gmail.com",
      :from => %("#{voornaam}" <#{email}>)
    }
end
end
