SMTP_SETTINGS = {
  authentication: :plain,
  port: ENV.fetch("MAILGUN_SMTP_PORT"),
  address: ENV.fetch("MAILGUN_SMTP_SERVER"), # example: "smtp.sendgrid.net"
  user_name: ENV.fetch("MAILGUN_SMTP_LOGIN"),
  password: ENV.fetch("MAILGUN_SMTP_PASSWORD"),
  domain: ENV.fetch("APPLICATION_HOST"), # example: "heroku.com"
}

if ENV["EMAIL_RECIPIENTS"].present?
  Mail.register_interceptor RecipientInterceptor.new(ENV["EMAIL_RECIPIENTS"])
end
