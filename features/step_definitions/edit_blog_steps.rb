Given /^there is a post with title "(.*?)" and\tcontent "(.*?)"$/ do |title, content|
	@post = create(:post, title: title, content: content)
end

Then /^I can see it has been updated$/ do
	step %{I am on the blog homepage}
	expect(find(:css, "table tr:nth-child(2)")).to have_content(@updated_title)
	expect(find(:css, "table tr:nth-child(2)")).to have_content(@updated_content)
end
