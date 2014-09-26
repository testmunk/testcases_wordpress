require 'testmunk/calabash/android/application'
require 'som/android/screens/login/login_screen'
require 'som/android/screens/home/home_screen'


class WordPressApp < Testmunk::Android::Application

  def login_screen
    @login_screen ||= LoginScreen.new(@driver)
    @current_screen = @login_screen
  end

  def home_screen
    @home_screen ||= HomeScreen.new(@driver)
    @current_screen = @home_screen
  end
end