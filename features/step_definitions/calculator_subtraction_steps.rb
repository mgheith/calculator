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