Given(/^I am on the Login screen$/) do
  @app.login_screen.await
end

When(/^I type "([^"]*)" in the login field$/) do |arg|
  @app.login_screen.login_field.insert_text(arg)
end

And(/^I type "([^"]*)" in the password field$/) do |arg|
  @app.login_screen.password_field.insert_text(arg)
end

And(/^I click sign in button$/) do
  @app.login_screen.sign_in_button.touch
end