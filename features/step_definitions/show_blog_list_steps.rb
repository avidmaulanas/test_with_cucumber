Then /^I can see list of (\d) posted blogs$/ do |count|
	expect(page).to have_selector("table>tbody>tr:eq(#{count})")
end