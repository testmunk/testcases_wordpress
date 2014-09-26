$LOAD_PATH.unshift *Dir.glob(File.expand_path('features'))

require 'calabash-android/cucumber'
require 'testmunk/calabash/initializer'
require 'som/android/word_press_app'


Before do
  @app = WordPressApp.new(self)
end