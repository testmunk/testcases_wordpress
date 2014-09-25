require 'testmunk/calabash/ios/screens/screen'
require 'testmunk/calabash/ios/screens/views/input_field'
require 'testmunk/calabash/ios/screens/views/button'


class LoginScreen < Testmunk::IOS::Screen

  attr_accessor :login_field, :password_field,
                :sign_in_button


  def initialize(driver)
    super driver

    @login_field = Testmunk::IOS::InputField.new(driver, "* marked:'Username / Email'")
    @password_field = Testmunk::IOS::InputField.new(driver, "* marked:'Password'")
    @sign_in_button = Testmunk::IOS::Button.new(driver, "* marked:'Sign In'")
  end

  def traits
    [@login_field.uiquery, @password_field.uiquery, @sign_in_button.uiquery]
  end
end