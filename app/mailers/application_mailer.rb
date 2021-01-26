class ApplicationMailer < ActionMailer::Base
  default from: 'appsupport@lilkickers.com',
          return_path: 'appsupport@lilkickers.com'

  layout 'mailer'

  def email(to_address, subject, body)
    options = { to: to_address, subject: subject, body: body }
    mail options
  end
end
