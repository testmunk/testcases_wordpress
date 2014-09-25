require 'calabash-cucumber/launcher'


Before do |scenario|
  %x[ideviceinstaller -i #{ENV["APP_BUNDLE_PATH"]}] if ENV['RESET_BETWEEN_SCENARIOS'] == '1'

  @calabash_launcher = Calabash::Cucumber::Launcher.new
  unless @calabash_launcher.calabash_no_launch?
    @calabash_launcher.relaunch
    @calabash_launcher.calabash_notify(self)
  end
end

After do |scenario|
  %x[ideviceinstaller -U #{ENV["BUNDLE_ID"]}] if ENV['RESET_BETWEEN_SCENARIOS'] == '1'

  unless @calabash_launcher.calabash_no_stop?
    calabash_exit
    if @calabash_launcher.active?
      @calabash_launcher.stop
    end
  end
end

at_exit do
  launcher = Calabash::Cucumber::Launcher.new
  if launcher.simulator_target?
    launcher.simulator_launcher.stop unless launcher.calabash_no_stop?
  end
end
