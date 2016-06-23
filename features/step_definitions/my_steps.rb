#encoding: utf-8
Given(/^Entro a la aplicacion$/) do
  visit "/"
end

When /^Entro a la validacion$/ do
  click_button "Validate!"
end

Then(/^Debo ver "(.*?)"$/) do |text|
  last_response.body.should =~ /#{text}/m
end

When(/^Click en (\d+) (\d+) (\d+) (\d+)$/) do |x, y, z, t|
  click_link(x + y + z + t)
end

Then(/^Debo ver "(.*?)" en (\d+) (\d+) (\d+) (\d+)$/) do |team, x, y, z, t|
  cell = "#{x}#{y}#{z}#{t}"
  last_response.should have_xpath( "//a[@id=\"#{cell}\"]") do |a|
    a.should contain( team )
  end
end

