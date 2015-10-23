Given /^there is a post with title "(.*?)" and\tcontent "(.*?)"$/ do |title, content|
	@post = create(:post, title: title, content: content)
end

When /^I edit this post$/ do
	visit(edit_post_path @post)
end

When /^I update title to "(.*?)" and content to "(.*?)"$/ do |title, content|
	@updated_title = title
	@updated_content = content
	@post.update_attributes!({ title: @updated_title, content: @updated_content })
end

Then /^I can see it has been updated$/ do
	step %{I am on the blog homepage}
	expect(find(:css, "table tr:nth-child(2)")).to have_content(@updated_title)
	expect(find(:css, "table tr:nth-child(2)")).to have_content(@updated_content)
end
