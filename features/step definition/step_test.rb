def login(x,y)
@browser.text_field(:name => 'josso_username').set(x)
@browser.text_field(:name => 'josso_password').set(y)
@browser.button(:value,'Login').click
end


Given /^I open login page$/ do
@browser.goto 'http://qa-cent6-64.groundwork.groundworkopensource.com'
end

Then /^i enter login credentials$/ do
login('admin','admin')
end

And /^i login$/ do
#browser.text.include?('Getting started').should == true
expect(@browser.text.include?('Getting started')).to be true
@browser.close
 end
 
 
 