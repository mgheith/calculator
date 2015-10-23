require "calculator"

When /^I add two integers$/ do
  @sum = Calculator.new.add(4, 5)
end

When /^I add zero to an integer$/ do
  @sum = Calculator.new.add(5, 0)
end

When /^I add the same integers in a different order$/ do
  @sum = Calculator.new.add(5, 4)
end

When /^I add three integers$/ do
  @sum = Calculator.new.add(2, 3, 4)
end

Then /^an integer is returned$/ do
  expect(@sum).to be_an Integer
end

Then /^the sum is correct$/ do
  expect(@sum).to eq 9
end

Then /^the integer is returned$/ do
  expect(@sum).to eq 5
end

When /^I subtract 2 integers$/ do
  @sub = Calculator.new.sub(8, 5)
end

Then /^an integer is returned$/ do
  expect(@sub).to be_an Integer
end

When /^I subtract the 2 integers$/ do
	@sub = Calculator.new.sub(8, 5)
end

Then /^the first number is subtracted by the second$/ do
  expect(@sub).to eq 3
end

When /^I subtract Zero from the first integer$/ do
  @sub = Calculator.new.sub(8, 0)
end

Then /^I will get the integer back$/ do
  expect(@sub).to eq 8
end

When /^I subtract the integers$/ do
  @sub = Calculator.new.sub(8, 8)
end

Then /^the subtraction will equal zero$/ do
	expect(@sub).to eq 0
end

When /^I subtract these three numbers$/ do
  @sub = Calculator.new.sub(7, 4, 1)
end

Then /^it will produce the difference$/ do
  expect(@sub).to eq 2
end


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

