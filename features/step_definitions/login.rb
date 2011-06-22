include Pages

Given /^I am just on "([^"]*)"$/ do |pagename|
  @common_page = CommonPage.new
  @common_page.check_page(pagename)
  @home_page = HomePage.new
  @home_page.login_lnk.click
end

When /I fill in the username with "(.*)"/ do |username|
   @login_page = LoginPage.new
   @login_page.username_txt.set(username)
end

When /^I fill in the password with "([^"]*)"$/ do |password|
   @login_page = LoginPage.new
   @login_page.password_txt.set(password)
end

When /^I click login image button$/ do

  @login_page = LoginPage.new

  if   @login_page.login_img.exists?
  then
    @login_page.login_img.click
  end

end


Then /^"(.*)" login success$/ do  |username|
  @home_page = HomePage.new
  if @home_page.login_name == username then
    puts "============login success============"
  else
    puts "============login fail============"
  end

end