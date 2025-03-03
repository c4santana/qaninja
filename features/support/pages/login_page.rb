class LoginPage
  include Capybara::DSL

  def go
    visit "/"
  end

  def with(email, pass)
    find("input[name=email]").set email
    find("input[name=password]").set pass
    click_button "Entrar"
  end

  def alert
    find(".alert").text
  end
end

#   def email
#     find("#emailId")
#   end

#   def password
#     find("#passId")
#   end

#   def sign_in_button
#     click_button "Entrar"
#   end
# end
