require 'testmunk/calabash/ios/screens/screen'
require 'testmunk/calabash/ios/screens/views/button'


class HomeScreen < Testmunk::IOS::Screen

  attr_accessor :add_site_button


  def initialize(driver)
    super driver

    @add_site_button = Testmunk::IOS::Button.new(driver, "* marked:'Blogs I Follow'")
  end

  def traits
    [@add_site_button.uiquery]
  end

end