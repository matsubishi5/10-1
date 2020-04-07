class DailyMailer < ApplicationMailer
    def send_mail(user)
        @user = user
        mail(subject: '確認メール',to: user.email)
    end

    def self.send_mail_users
        @users = User.all
        @users.each do |user|
        DailyMailer.send_mail(user).deliver_now
        end
    end
end
