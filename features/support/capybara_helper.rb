# Capybara.register_driver :selenium do |app|
#   Capybara::Selenium::Driver.new(app, browser: :chrome)
# end

Capybara.default_driver       = :selenium # browser firefox
Capybara.javascript_driver 		= :selenium
Capybara.always_include_port  = true
Capybara.current_session.driver.browser.manage.window.maximize
