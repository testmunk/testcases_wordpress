$LOAD_PATH.unshift *Dir.glob(File.expand_path('features'))

require 'calabash-cucumber/cucumber'
require 'som/ios/word_press_app'


Before do
  @app = WordPressApp.new(self)
end