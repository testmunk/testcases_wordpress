require 'testmunk/calabash/android/screens/screen'
require 'testmunk/calabash/android/screens/views/input_field'
require 'testmunk/calabash/android/screens/views/button'


class LoginScreen < Testmunk::Android::Screen

  attr_accessor :login_field, :password_field,
                :sign_in_button


  def initialize(driver)
    super driver

    @login_field = Testmunk::Android::InputField.new(driver, "* id:'nux_username'")
    @password_field = Testmunk::Android::InputField.new(driver, "* id:'nux_password'")
    @sign_in_button = Testmunk::Android::Button.new(driver, "* marked:'nux_sign_in_button'")
  end

  def traits
    [@login_field.uiquery, @password_field.uiquery, @sign_in_button.uiquery]
  end
end