SMTP_SETTINGS = {
  authentication: :plain,
  #port: ENV.fetch("MAILGUN_SMTP_PORT"),
  #address: ENV.fetch("MAILGUN_SMTP_SERVER"), # example: "smtp.sendgrid.net"
  #user_name: ENV.fetch("MAILGUN_SMTP_LOGIN"),
  #password: ENV.fetch("MAILGUN_SMTP_PASSWORD"),
  #domain: ENV.fetch("APPLICATION_HOST"), # example: "heroku.com"
  address: ENV.fetch("SMTP_ADDRESS"),
  port: ENV.fetch("SMTP_PORT"),
  user_name: ENV.fetch("SMTP_USERNAME"),
  password: ENV.fetch("SMTP_PASSWORD"),
  domain: ENV.fetch("SMTP_DOMAIN"),
  
}

if ENV["EMAIL_RECIPIENTS"].present?
  Mail.register_interceptor RecipientInterceptor.new(ENV["EMAIL_RECIPIENTS"])
end
