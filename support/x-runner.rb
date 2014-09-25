case ENV['PLATFORM']
  when 'ios'
    exec "cucumber -p #{ENV['PLATFORM']} #{ENV['FEATURE_FILE']}"
  when 'android'
    exec "calabash-android run #{ENV['APK_FILE']} #{ENV['FEATURE_FILE']} -p #{ENV['PLATFORM']}"
end

