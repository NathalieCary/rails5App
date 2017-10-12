class UserMailer < ApplicationMailer
	default from: "from@example.com"

  def contact_form(email, name, message)
  	@message = message
    mail(:from => email,
         :to => 'nathalie19@live.co.za',
         :subject => "A new contact form message from #{name}")
  end

  def welcome(user)
    @user = user
    mail(:from => 'nathalie19@live.co.za',
         :to => user.email,
         :subject => "Welcome to Desire!!!")
  end

  def order_placed(user, product)
    @user = user
    @product = product
    mail(:from => 'nathalie19@live.co.za',
         :to => user.email,
         :subject => "Your order of the #{product.name} has been placed.")
  end

end
