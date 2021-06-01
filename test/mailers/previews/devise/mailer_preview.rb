class Devise::MailerPreview < ActionMailer::Preview
    def reset_password_instructions
        MyDeviseMailer.reset_password_instructions(User.last, {})
    end
end
