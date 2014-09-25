require 'testmunk/calabash/ios/application'
require 'som/ios/screens/login/login_screen'
require 'som/ios/screens/home/home_screen'


class WordPressApp < Testmunk::IOS::Application

  def login_screen
    @login_screen ||= LoginScreen.new(@driver)
    @current_screen = @login_screen
  end

  def home_screen
    @home_screen ||= HomeScreen.new(@driver)
    @current_screen = @home_screen
  end
end