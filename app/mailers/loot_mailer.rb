class LootMailer < ActionMailer::Base
  default from: "admin@loot.com"
  
  def welcome_email(user)
    @user = user
    mail(to: user.email, subject: 'Welcome to Loot')
  end
    
end
