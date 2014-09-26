$LOAD_PATH.unshift *Dir.glob(File.expand_path('features'))

require 'rb_reloader'
require 'testmunk/calabash/initializer'
require 'testmunk/version'
require 'testmunk/calabash/logger'
# require 'som/ios/word_press_app'
require 'som/android/word_press_app'


RbReloader.register(%W(#{Dir.pwd}/features/som/**/*.rb #{Dir.pwd}/support/test/platforms/*.rb))


def r!
  RbReloader.reload
end