Then /^I can see list of (\d) posted blogs$/ do |count|
	expect(find(:css, "table tr:nth-child(#{(count.to_i + 1)})")).to have_content("Title #{count}")
end