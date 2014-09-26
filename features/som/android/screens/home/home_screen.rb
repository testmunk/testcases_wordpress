require 'testmunk/calabash/android/screens/screen'
require 'testmunk/calabash/android/screens/views/button'


class HomeScreen < Testmunk::Android::Screen

  attr_accessor :new_post_button


  def initialize(driver)
    super driver

    @new_post_button = Testmunk::Android::Button.new(driver, "* marked:'menu_new_post'")
  end

  def traits
    [@new_post_button.uiquery]
  end

end