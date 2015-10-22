Given /^there is a post with title "(.*?)" and\tcontent "(.*?)"$/ do |title, content|
	@post = Post.create!({ title: title, content: content, post_time: Time.now })
end

When /^I edit this post$/ do
	visit(edit_post_url @post)
end

When /^I update title to "(.*?)" and content to "(.*?)"$/ do |title, content|
	@updated_title = title
	@updated_content = content
	@post.update_attributes!({ title: @updated_title, content: @updated_content })
end

Then /^I can see it has been updated$/ do
	step %{I am on the blog homepage}
	find("table#posts-list>tr:eq(2) >td:eq(1)").to have_content(@updated_title)
	find("table#posts-list>tr:eq(2) >td:eq(2)").to have_content(@updated_content)
end