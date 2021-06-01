class MyDeviseMailer < Devise::Mailer
    include Devise::Controllers::UrlHelpers # Optional. eg. `confirmation_url`
    default template_path: "devise/mailer" # to make sure that your mailer uses the devise views

    def reset_password_instructions(record, token, opts = {})
        attachments.inline["logo.png"] = File.read("#{Rails.root}/app/assets/images/logo.png")
        super
    end
end
