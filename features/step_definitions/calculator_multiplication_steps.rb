require 'calculator'

Given /^I have 2 integers$/ do
  pending
end

When /^I multiply 2 integers$/ do
  @mlt = Calculator.new.mlt( 3, 4)
end

Then /^an integer is returned$/ do
  expect(@mlt).to eq 12
end

When /^I switch the order of the integers$/ do
  @mlt = Calculator.new.mlt(4, 3)
end

Then /^the result shoud stay the same$/ do
  expect(@mlt).to eq 12
end

Given /^I have one as one of two integers$/ do
  pending
end

When /^I multiply one by an integer$/ do 
  @mlt = Calculator.new.mlt(4, 1)
end

Then /^I will get the integer back$/ do
  expect(@mlt).to eq 4 
end

When /^I multiply zero by an integer$/ do
  @mlt = Calculator.new.mlt(4, 0)
end

Then /^the result will be zero$/ do
  expect(@mlt).to eq 0
end

When /^I multiply three integers$/ do
  @mlt = Calculator.new.mlt (2, 3, 4)
end  

Then /^The proper product will be produced$/ do
  expect(@mlt).to eq 24
end
