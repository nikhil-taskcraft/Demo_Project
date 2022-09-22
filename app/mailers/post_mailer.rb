class PostMailer < ApplicationMailer

  default from: 'nikhiltoday5@gmail.com'

  def post_created   

    @user = params[:user]
    @greeting = "Welcome to the website"
    mail(from: 'nikhiltoday5@gmail.com',to: @user.email,subject:"You Are Signup Succesfully" ) 
  end
  
end


  

