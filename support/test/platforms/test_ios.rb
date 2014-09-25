def t!
  @app = WordPressApp.new(self)

  @app.login_screen.login_field.insert_text 'fryclukasz'
  @app.login_screen.password_field.insert_text 'T3St123#'
  @app.login_screen.sign_in_button.touch
end